require_relative 'business_logic'
require 'sqlite3'


db_clients = BusinessLogic.new('db_clients')


def begin_read(db_clients)
  puts "Would you like to see all columns, or all data about one Client? ('all' / 'one')"
  answer = gets.chomp.downcase
  if answer == "all"
    puts "Which column would you like to view? (all is a viable input)"
      column = gets.chomp
      column = "*" if column == "all"
    db_clients.read("clients_data",column)
  else 
    puts "Which client would you like to view?"
      client = gets.chomp
    db_clients.read_all("clients_data","#{client}")
  end
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
  program_loop(db_clients)
end

def begin_note(db_clients)
  puts "Which client is this note for?"
    client = gets.chomp
    client_id = db_clients.find_id(client)
  puts "Please input your detailed notes"
    notes = gets.chomp

  db_clients.create_note(notes,client_id)
  program_loop(db_clients)
end

def begin_delete(db_clients)
  puts "This action will delete all information pertaining to the client."
  puts "Which client would you like to delete?"
    client = gets.chomp
    client_id = db_clients.find_id(client)
  db_clients.delete(clients_data, client, "id", client_id)
  db_clients.delete(notes,client, "notes.client_id", client_id)
  program_loop(db_clients)
end

def initiate
  db_clients = BusinessLogic.new('db_clients')
  puts "Hello, welcome to the Moncler CRM Database"
  program_loop(db_clients)
end

def program_loop(db_clients)
  puts "What would you like to do?"
  puts "View a Client, New Client, Update an existing Client, make a Note about a Client, or Delete an entry?"
  
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
    else 
      puts "Please try again"
    end
    puts "Would you like to continue or to quit?"
      answer = gets.chomp
      break if answer == 'quit'
      program_loop(db_clients)
  end
end


initiate








