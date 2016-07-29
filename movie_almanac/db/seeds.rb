# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#Actor.destroy_all
Movie.destroy_all

morgan = Actor.create first_name: 'Morgan', last_name: 'Freeman'
jim = Actor.create first_name: 'Jim', last_name: 'Carrey'
kevin = Actor.create first_name: 'Kevin', last_name: 'Bacon' 

planes = Movie.create title: 'Planes, Trains, and Automobiles', description: 'Comedy', year: 1987
spider = Movie.create title: 'Along came a spider', description: 'Thriller', year: 2001
bruce = Movie.create title: 'Bruce Almighty', description: 'Comedy', year: 2003
cable = Movie.create title: 'Cable Guy', description: 'Drama', year: 1996
apollo_13 = Movie.create title: 'Apollo 13', description: 'Drama', year: 1995

kevin.movies << planes
morgan.movies << spider
morgan.movies << bruce
jim.movies << bruce
jim.movies << cable
kevin.movies << apollo_13
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
