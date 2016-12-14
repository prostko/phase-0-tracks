# Nested data structure of tickets to escape the room gtown and arlingtown
  # Venue (x2)
    # Rooms (2 rooms, 4 rooms)
      # available times (1 per evening)
        # Date, time
        # Price ($25 PER PERSON 3-6 MAX)
        # Number of guests booked
        # Name of reservation

escape_room_live = {
  'georgetown'=> {
    'titanic'=> {'1/1'=> ['available']},
    'mad scientist'=> {"1/1"=> ['6:00','$100', 4, "Bob"]},
    'mummys curse'=> {"1/1"=> ['9:00', '$150', 6, "Tammy"]},
    'sherlocks bedchamber'=> {'1/1'=> ['available']},
  },
  "arlington"=> {
    "cosa nostra"=> {'1/1'=> ['available']},
    "friday the 13th"=> {'1/1'=> ["Midnight", '$500', 3, "Donny"]},
  }
}



p "Find out reservation status of georgetown escape room: titanic, on Jan 1"
p escape_room_live['georgetown']['titanic']['1/1']


p "Find the names of the rooms in Arlington location"
escape_room_live['arlington'].each do |room, info|
  puts room 
end

p "find out how many people are coming to mummy's curse room in gtown on 1/1"
p escape_room_live['georgetown']['mummys curse']['1/1'][2]

p "Find how much ticket costed, and who the reservation is for, for friday the 13th room on 1/1"
p escape_room_live['arlington']['friday the 13th']['1/1'][2..3]
