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
      CRUD
      All pertinent data is retrieved at input of client name
        - each client has an id, 
        - The user will input the name of the client 
          - If client history exists, pulls up history
          - If no history, begins an intuitive process to input that data
            - the history will then be saved to maintain the data
      Possibility of user Profiles which has access to separate db containing clients?
        Profiles would give ability to send messages or things like that between profiles
        Each profile would an instance of a class, then in order to read that class, use a password?

  
=end


require 'sqlite3'
require 'faker'

db_clients =  SQLite3::Database.new("clients.db")

create_table_collections = <<-SQL
  CREATE TABLE IF NOT EXISTS collections (
  id INTEGER PRIMARY KEY,
  collection VARCHAR(255)
  );
SQL

create_table_notes = <<-SQL
  CREATE TABLE IF NOT EXISTS notes (
    id INTEGER PRIMARY KEY,
    note VARCHAR(1024)
    );
SQL

create_table_purchase_histories = <<-SQL
  CREATE TABLE IF NOT EXISTS purchase_histories (
  id INTEGER PRIMARY KEY,
  date VARCHAR(50),
  time VARCHAR(50),
  amount NUMERIC,
  collection_id INTEGER,
  FOREIGN KEY collection_id REFERENCES collections.id
  );
SQL


create_table_basic_data = <<-SQL
  CREATE TABLE IF NOT EXISTS basic_data (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    nickname VARCHAR(255),
    gender VARCHAR(255),
    email VARCHAR(255),
    billing_address VARCHAR(320),
    shipping_address VARCHAR(320),
    phone_number INTEGER,
    shirt_size INTEGER,
    shoe_size INTEGER,
    birthday VARCHAR(50),
    nationality VARCHAR(255),
    purchase_history_id INTEGER,
    note_id INTEGER,
    FOREIGN KEY (purchase_history_id) REFERENCES purchase_histories(id),
    FOREIGN KEY (note_id) REFERENCES notes(id)
    );
SQL













