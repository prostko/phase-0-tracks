require_relative 'CRM_database_module'
require 'sqlite3'


class BusinessLogic

  include CRM_database

  attr_reader :db_clients

  def initialize(db)
    @db_clients = db
    @db_clients = self.create_database(@db_clients)
  end

  def read(table, column)
    db_clients.execute("SELECT #{table}.id, #{column} FROM #{table}").each do |row| puts "ID: #{row}" end
  end

  def read_all(table, name)
    db_clients.execute("SELECT * FROM #{table} WHERE name = '#{name}'").each do |row| row.each do |item| puts "#{item}"end end
  end

  def create(client_name, nickname, gender, email, billing, shipping, phone_number, shirt_size, jacket_size, shoe_size, birthday, nationality)
    db_clients.execute("INSERT INTO clients_data(name,nickname,gender,email,billing_address,shipping_address,phone_number,shirt_size,jacket_size,shoe_size,birthday,nationality)VALUES (?,?,?,?,?,?,?,?,?,?,?,?)",[client_name,nickname,gender,email,billing,shipping,phone_number,shirt_size,jacket_size,shoe_size,birthday,nationality])
  end

  def create_note(notes, client_id)
    db_clients.execute("INSERT INTO notes(notes,client_id) VALUES (?,?)", [notes, client_id])
  end

  def update(table, column, client, new_value)
    # update_command = "UPDATE #{table} SET #{column} = '#{new_value}' WHERE name='#{client}'"
    db_clients.execute("UPDATE #{table} SET #{column} = '#{new_value}' WHERE name='#{client}'")
  end

  def delete(table, name, id, client_id)
     db_clients.execute("DELETE FROM #{table} WHERE #{id} = '#{client_id}'")
   end 

  def find_id(name)
    db_clients.execute("SELECT id FROM clients_data WHERE name = '#{client}'").join.to_i
  end
end

#  db_clients = BusinessLogic.new('db_clients')
# # db_clients.update("clients_data", "name", "YYY", "ZZZ")
# # client_id = db_clients.execute("SELECT id FROM clients_data WHERE name = 'ZZZ'")
# db_clients.throwaway