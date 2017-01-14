require_relative 'CRM_database_module'
require 'sqlite3'


class BusinessLogic

  include CRM_database

  attr_reader :db_clients

  def initialize(db)
    @db_clients = db
    @db_clients = self.create_database(@db_clients)
  end

  def read(table,column)
    db_clients.execute("SELECT #{table}.id, #{column} FROM #{table}").each do |row| puts "ID: #{row}" end
  end

  def create
    # input the user input into the database
    # make sure name doesn't already exist

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

    db_clients.execute("INSERT INTO clients_data(name,nickname,gender,email,billing_address,shipping_address,phone_number,shirt_size,jacket_size,shoe_size,birthday,nationality)VALUES (?,?,?,?,?,?,?,?,?,?,?,?)",[client_name,nickname,gender,email,billing,shipping,phone_number,shirt_size,jacket_size,shoe_size,birthday,nationality])
  end

  def update
    puts "Which table's information would you like to update?"
    table = gets.chomp
    case table
    when "clients_data"
      puts "Please input the name of the person to be updated."
      table = gets.chomp
      puts 
    when "notes"
    else raise ArgumentError "Input not valid"
    end
    update_command = <<-SQL

    SQL
    db_clients.execute()
  end

  def update(table, column, old_value, new_value)

    update_command = "UPDATE #{table} SET #{column} = '#{new_value}' WHERE #{column}='#{old_value}'"
    db_clients.execute(update_command)

  end
end



this = BusinessLogic.new('db_clients')
#this.read('clients_data','name')

this.update("clients_data", "name", "ZZZ", "YYY")



