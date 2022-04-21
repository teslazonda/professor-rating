# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the DB"
Professor.destroy_all
StudentStory.destroy_all
puts "Professors cleared"
darren = Professor.create({name: 'Darren Ashmore', subject: 'Japanese Popular Culture', rating: 4.5, difficulty: 1.5})
mike = Professor.create({name: 'Mike Blow', subject: 'Music', rating: 3.0, difficulty: 3.0})
StudentStory.create({title: 'Mike Blow has tough classes', text: 'Gave such hard quizzes', date: Date.today, professor_id: darren.id })
StudentStory.create({title: 'Darren has easy classes', text: 'You just watch movies', date: Date.today, professor_id: mike.id })
