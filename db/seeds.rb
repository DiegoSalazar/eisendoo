# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Create default user..."
u = User.create name: "Admin Man", email: "mail@example.com", password: "123123123", password_confirmation: "123123123"

puts "Create default contexts..."
%w(personal work).each do |name|
  Context.create name: name, main: name == "personal"
end

puts "Create the Eisenhower Matrix for each context"
headings = [
  "Do Now",
  "Decide when to do",
  "Delegate or delay",
  "Rethink or remove"
]
Context.find_each do |c|
  4.times do |i|
    c.quadrants.create number: i+1, name: "Quadrant #{i+1}", heading: headings[i]
  end
end

puts "Create priorities..."
# Prioritization based on waitbutwhy's procrastinator matrices
# Ref: http://waitbutwhy.com/2015/03/procrastination-matrix.html
{ 
  disastinator: [4], 
  impostinator: [4, 3], 
  successtinator: [3, 1, 4],
  eisenhower: [1, 2, 3, 4]
}.each do |name, sort|
  Priority.create name: name, quadrant_sort: sort, active: name == :successtinator
end

puts "Creating todos"
todos = [
  "Finish this app", "Go do important and urgent things",
  "Finish a chore", "Clean the house",
  "Fix credit", "General thing",
  "Watch movies", "Go out for drinks"
].to_enum
Quadrant.all.each_with_index do |q, i|
  q.todos.create [{ body: todos.next, user: u }, { body: todos.next, user: u }] rescue nil
end
