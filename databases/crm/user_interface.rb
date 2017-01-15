require_relative 'database_helper'
require_relative 'business_logic'


db_clients = BusinessLogic.new('db_clients')

def begin_read(db_clients)
  puts "would you like to see 'Clients' or 'Notes'"
    table = gets.chomp.downcase
    table[0] == "n" ? table = "notes" : table = "clients_data"

    if table == "notes"
      puts "Would you like to see 'All' Notes, or notes pertaining to a 'One' client?"
        answer = gets.chomp.downcase
      if answer[0] == "a"
        db_clients.read("notes","notes")
      else
        puts "Which client?"
          client_name = gets.chomp
          client_id = db_clients.find_id(client_name)
        db_clients.read_notes_client(client_name)
      end
    elsif table == "clients_data"
      puts "Would you like to see all column data, or all data about one Client? ('all' / 'one')"
        answer = gets.chomp.downcase
      if answer[0] == "a"
        puts "Which column would you like to view? (all is a viable input)"
          column = gets.chomp
          column = "*" if column == "all"
        db_clients.read(table,column)
      else 
        puts "Which client would you like to view?"
          client = gets.chomp
        db_clients.read_all(table,"#{client}")
      end
    end
  puts "\n\n"
  program_loop(db_clients)
end

def begin_create(db_clients)
  puts "What is the clients name? (First, Last)"
    client_name = gets.chomp
    puts "Nickname"
    nickname = gets.chomp
    puts "gender (male/female)"
    gender = gets.chomp
    puts "Birthday"
    birthday = gets.chomp
    puts "Nationality"
    nationality = gets.chomp
    puts "email"
    email = gets.chomp
    puts "Billing address"
    billing = gets.chomp
    puts "Shipping Address"
    shipping = gets.chomp
    puts "Phone number"
    phone_number = gets.chomp
    puts "Shirt size"
    shirt_size = gets.chomp
    puts "Jacket size"
    jacket_size = gets.chomp
    puts "Shoe size"
    shoe_size = gets.chomp

    db_clients.create(client_name, nickname, gender, email, billing, shipping, phone_number, shirt_size, jacket_size, shoe_size, birthday, nationality)
    puts "\n\n"
    program_loop(db_clients)
end

def begin_update(db_clients)
  puts "Which client would you like to update?"
    client = gets.chomp
    table = "clients_data"
  puts "Which value will be updated?"
    column = gets.chomp
  puts "What is the new data to be input?"
    new_value = gets.chomp

  db_clients.update(table, column, client, new_value)
  puts "\n\n"
  program_loop(db_clients)
end

def begin_note(db_clients)
  puts "Which client is this note for?"
    client = gets.chomp
    client_id = db_clients.find_id(client)
  puts "Please input your detailed notes"
    notes = gets.chomp

  db_clients.create_note(notes,client_id)
  puts "\n\n"
  program_loop(db_clients)
end

def begin_delete(db_clients)
  puts "This action will delete all information pertaining to the client."
  puts "Which client would you like to delete?"
    client = gets.chomp
    client_id = db_clients.find_id(client)
  db_clients.delete("clients_data", client, "id", client_id)
  db_clients.delete("notes",client, "notes.client_id", client_id)
  puts "\n\n"
  program_loop(db_clients)
end

def begin_populate(db_clients)
  puts "Would you like to populate your databsae with information?"
  puts "This will add (5) random Clients' information"
  puts "Please input yes, or type 'done'"
    answer = gets.chomp.downcase
  if answer[0] == "y"
    db_clients.populate_database
  else
    puts "\n\n"
    program_loop(db_clients)
  end 
end

def initiate
  db_clients = BusinessLogic.new('db_clients')
  puts "Hello, welcome to the Moncler CRM Database"
  program_loop(db_clients)
end

def program_loop(db_clients)
  puts "What would you like to do?"
  puts "\n\n"
  puts "View a Client, New Client, Update an existing Client, make a Note about a Client, or Delete an entry, or Populate your database?"
  
  answer = gets.chomp.downcase
  until answer == "done" || answer == "quit" 
    
    if answer[0] == "v"
      begin_read(db_clients)
    elsif answer[0] == "c" || answer[0] == "n"
      begin_create(db_clients)
    elsif answer[0] == "u"
      begin_update(db_clients)
    elsif answer[0] == "m" 
      begin_note(db_clients)
    elsif answer[0] == "d"
      begin_delete(db_clients)
    elsif answer[0] == "p"
      begin_populate(db_clients)
    elsif answer[0] == "q"
      break
    else 
      puts "Please try again"
    end
    puts "Would you like to continue with the program or to quit?"
      answer = gets.chomp
      break if answer[0] == 'quit'
      program_loop(db_clients)
  end
end


initiate








