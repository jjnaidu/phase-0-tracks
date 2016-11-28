require 'sqlite3'

# Create database

db = SQLite3::Database.new("turkeys.db")
db.results_as_hash = true 

# Create table if it does not exist
# Table includes id number, name, and diet of turkey

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS turkeys (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		diet VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)

# Add a turkey to the database
def add_turkey(db, turkey_name, diet)
	db.execute("INSERT INTO turkeys(name, diet) VALUES (?, ?)", [turkey_name, diet])
end

# Retrieve turkeys based on diet
def search_diet(db, diet)
	output = db.execute("SELECT * FROM turkeys WHERE diet = ?", [diet])
	output.each do |turkey|
		puts "Turkey #{turkey["id"]} is named #{turkey["name"]} and eats #{turkey["diet"]}"
	end
end

# Driver code

puts "What is the name of your turkey?"
turkey_name = gets.chomp

puts "What does the turkey eat (insects, berries, or veggies)?"
diet = gets.chomp

add_turkey(db, turkey_name, diet)

puts "Here are turkeys that enjoy #{diet}:"
search_diet(db, diet)