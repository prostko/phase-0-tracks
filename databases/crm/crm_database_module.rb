=begin
  CRM Database for Moncler
    Basic database set up with a useable, understandable UI.
      Want to have the pertinent data retrieved or creation beginning at input of customers name.

    Database
      Couple tables to conform to Normal Rules
      Client Info :
        Basic info
          Name , nickname, sizes, shoe size, career, education, anniversay, birthday, nationality, 
          language spoken, Address billing/shipping, email, cell phone, card number,
        Transaction history 
          last transaction (amount, date, time, items), transaction history,
          collections purchased from, average amount spent per transaction, average purchase per visit,
          average number of items per purchase, category of purchase
        Personal info
          sizes of family members, relationship status, children status, ages of children, vacation locations, 
          hobbies, notes, list of gifts given, contactability 

    UI
      All pertinent data is retrieved at input of client name
        - each client has an id, 
        - The user will input the name of the client 
          - If client history exists, pulls up history
          - If no history, begins an intuitive process to input that data
            - the history will then be saved to maintain the data
        -CRUB (obviously)
      Possibility of user Profiles which has access to separate db containing clients?
        Profiles would give ability to send messages or things like that between profiles
        Each profile would an instance of a class, then in order to read that class, use a password?

  
=end


require 'sqlite3'
require 'faker'
#Faker::Config.locale = 'en-US'



module CRM_database

  def create_database(db_clients)

  db_clients =  SQLite3::Database.new("clients.db")

  create_table_collections = <<-SQL
    CREATE TABLE IF NOT EXISTS collections (
    id INTEGER PRIMARY KEY,
    collection VARCHAR(255)
    )
  SQL

  create_table_notes = <<-SQL
    CREATE TABLE IF NOT EXISTS notes (
      id INTEGER PRIMARY KEY,
      notes VARCHAR(1024),
      client_id INTEGER,
      FOREIGN KEY (client_id) REFERENCES clients_data(id)
      )
  SQL

  create_table_purchase_histories = <<-SQL
    CREATE TABLE IF NOT EXISTS purchase_histories (
    id INTEGER PRIMARY KEY,
    date VARCHAR(50),
    time VARCHAR(50),
    amount NUMERIC,
    collection_id INTEGER,
    client_id INTEGER,
    FOREIGN KEY (collection_id) REFERENCES collections(id),
    FOREIGN KEY (client_id) REFERENCES clients_data(id)
    )
  SQL


  create_table_clients_data = <<-SQL
    CREATE TABLE IF NOT EXISTS clients_data (
      id INTEGER PRIMARY KEY,
      name VARCHAR(255) NOT NULL UNIQUE,
      nickname VARCHAR(255),
      gender VARCHAR(255),
      email VARCHAR(255),
      billing_address VARCHAR(320),
      shipping_address VARCHAR(320),
      phone_number INTEGER,
      shirt_size INTEGER,
      shoe_size INTEGER,
      birthday VARCHAR(50),
      nationality VARCHAR(255)
      )
  SQL

  db_clients.execute(create_table_collections)
  db_clients.execute(create_table_notes)
  db_clients.execute(create_table_purchase_histories)
  db_clients.execute(create_table_clients_data)

  
# Creating methods to put into SQL, for data population
  def create_clients(db,name,nickname,gendr,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality)
    db.execute("INSERT INTO clients_data(name,nickname,gender,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality) VALUES (?,?,?,?,?,?,?,?,?,?,?)",[name,nickname,gendr,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality]) 
  end

  def create_notes(db, client_id, note)
    db.execute("INSERT INTO notes(notes,client_id) VALUES (?,?)", [note,client_id])
  end


  def create_collections_data # simple refs table
    "INSERT INTO collections(collection) VALUES ('ready-to-wear'),('gone rogue'),('gone bleu'),('shoes'),('grenoble'),('longue saison'), ('accessories')"
  end


# creating iterating methods to use above mothods and populate the tables
  def populate_clients_data(db_clients)
      5.times do |x|
        x % 2 == 0 ? gendr = 'male' : gender = 'female'
        
        create_clients(db_clients, Faker::Name.name,'none',gendr,Faker::Internet.email, Faker::Address.city+" "+Faker::Address.street_address+" "+Faker::Address.zip_code, Faker::Address.city+" "+Faker::Address.street_address+" "+Faker::Address.zip_code,Faker::PhoneNumber.cell_phone, Faker::Number.number(2), Faker::Number.digit, "#{Faker::Date.backward(9999)}", Faker::Address.country)
      end
    end

  def populate_notes_data(db)

    5.times do |x|
      create_notes(db,Faker::Number.between(1,25), Faker::ChuckNorris.fact)
    end
  end

  populate_clients_data(db_clients)
  populate_notes_data(db_clients)
  db_clients.execute(create_collections_data)

 
 # implicit return the database
  db_clients
  end
end









