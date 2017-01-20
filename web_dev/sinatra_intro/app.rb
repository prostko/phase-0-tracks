# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  if params[:name] && params['age'] 
   "#{params[:name]} is #{params[:age]} years old." 
   elsif params['name']
    "Hello, #{params[:name]}!"
  else
    "Hello, you!"
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "<h3>1234 Lane St, Citytown, WY 22223</h3>"
end

get '/great_job' do
  name = params[:name]
  name ? "Good job, #{name}" : "Good job"
end

get '/add/:x/:y' do
  num1 = params[:x].to_i
  num2 = params[:y].to_i
  sum = num1 + num2
  "The sum of #{num1} and #{num2} is #{sum.to_s}"
end

# get '/campus/:campus' do
#   campuses = db.execute("SELECT * FROM students WHERE students.campus = (?)", params[:campus])
#   # response = ""
#   # campuses.each do |campus|
#   #   response << "Campus: campcampus<br>"
#   #   response << "Name: #{student['name']}<br>"
#   # end
#   # response
#   p campuses
# end

get '/students/find/:last_name' do
# take the id and name from students
#   augment this return to make name = the first name in the hash value's string
  last_name = params[:last_name]
  students = db.execute("SELECT id, name FROM students")
  search_result = "Student Not Found"

 students.each do |person|
    if person['name'].split.last == last_name
      search_result = db.execute("SELECT * FROM students WHERE id = (?)", [person['id']])
    end
  end
  search_result.to_s
end


