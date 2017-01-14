require_relative 'CRM_database_module'
require 'sqlite3'

module CRM_user_interface

  def create(database)
    # input the user input into the database
    # make sure name doesn't already exist

    puts "What is the clients name? (First, Last)"
    client_name = gets.chomp
    # puts "Nickname"
    # nickname = gets.chomp
    # puts "gender (male/female)"
    # gender = gets.chomp
    # puts "Birthday"
    # birthday = gets.chomp
    # puts "Nationality"
    # nationality = gets.chomp
    # puts "email"
    # email = gets.chomp
    # puts "Billing address"
    # billing = gets.chomp
    # puts "Shipping Address"
    # shipping = gets.chomp
    # puts "Phone number"
    # phone_number = gets.chomp
    # puts "Shirt size"
    # shirt_size = gets.chomp
    # puts "Jacket size"
    # jacket_size = gets.chomp
    # puts "Shoe size"
    # shoe_size = gets.chomp

    database.execute("INSERT INTO clients_data(name,nickname,gender,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality)VALUES (?,?,?,?,?,?,?,?,?,?,?)",[name,nickname,gendr,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality])
  end

  def update
    
  end

  def destroy
    
  end
end

class BusinessLogic

  include CRM_database

  attr_reader :db_clients

  def initialize(db)
    @db_clients = db
    @db_clients = self.create_database(@db_clients)
  end

  def read(table,column)
    p @db_clients.execute("SELECT #{column} FROM #{table}")
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


    @db_clients.execute("INSERT INTO clients_data(name,nickname,gender,email,billing_address,shipping_address,phone_number,shirt_size,shoe_size,birthday,nationality)VALUES (?,?,?,?,?,?,?,?,?,?,?)",[client_name,nickname,gender,email,billing,shipping,phone_number,shirt_size,jacket_size,shoe_size,birthday,nationality])
  end
end



this = BusinessLogic.new('db_clients')
this.read('clients_data','name')

#this.create



