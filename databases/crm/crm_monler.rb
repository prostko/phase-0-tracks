=begin
  CRM Database for Moncler
    Basic database set up with a useable, understandable UI.
      Want to have the pertinent data retrieved or creation beginning at input of customers name.

    Database
      Couple tables to conform to Normal Rules
      Client Info :
      Basic info
        Name , Address , email, cell phone, card number,
      Transaction history 
        last transaction (amount, date, time, items), transaction history,
        collections purchased from, average amount spent per transaction, average purchase per visit,
      Personal info
        relationship status, children status, ages of children

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

create_table = <<-: 
  
:



