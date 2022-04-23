# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.destroy_all
Reviewer.destroy_all

sample_user = Reviewer.create!  name: "Sample", password_digest: "test" 

Book.create! [
  { name: "My way or highway", author: "Me", reviewer: sample_user },
  { name: "The Rails Way", author: "The Other Guy", reviewer: sample_user },
  { name: "Cracking the Coding Interview", author: "McDowell", reviewer: sample_user },
  { name: "The Design of Everyday Things", author: "Norman", reviewer: sample_user },
  { name: "R for Data Science", author: "Wickham", reviewer: sample_user },
  { name: "Python Crash Course", author: "Matthes", reviewer: sample_user },
  { name: "Clean Code", author: "Martin", reviewer: sample_user },
  { name: "SQL in 10 minutes", author: "Forta", reviewer: sample_user },
  { name: "Eloquent Javascript", author: "Haverbeke", reviewer: sample_user },
  { name: "Eloquent Ruby", author: "Olsen", reviewer: sample_user },
  { name: "Head First Ruby", author: "McGavren", reviewer: sample_user }
]