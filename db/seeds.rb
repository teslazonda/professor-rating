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
puts "creating Professors"
darren = Professor.create!({name: 'Darren Ashmore', subject: 'Japanese Popular Culture', rating: 4.5, difficulty: 1.5})
mike = Professor.create!({name: 'Mike Blow', subject: 'Music', rating: 3.0, difficulty: 3.0})
koji = Professor.create!({name: 'Koji Haraguchi', subject: 'Political Science', rating: 3.0, difficulty: 3.0})
genjima = Professor.create!({name: 'Fukumi Genjima', subject: 'Career Development Science', rating: 2.0, difficulty: 2.0})
imaki = Professor.create!({name: 'Jun Imaki', subject: 'Japanese Language', rating: 5.0, difficulty: 5.0})
okabe = Professor.create!({name: 'Mariko Okabe', subject: 'Japanese Language', rating: 4.0, difficulty: 5.0})
melzer = Professor.create!({name: 'Jügen Paul Melzer', subject: 'History', rating: 5.0, difficulty: 2.0})
sanjay = Professor.create!({name: 'Sanjay Jhingan', subject: 'Dean/Physics', rating: 4.0, difficulty: 3.0})
lacktorin = Professor.create!({name: 'Michael Lacktorin', subject: 'Economics', rating: 1.0, difficulty: 5.0})
laratta = Professor.create!({name: 'Rosario Laratta', subject: 'Political Science', rating: 4.0, difficulty: 4.0})
vahid = Professor.create!({name: 'Vahid Rafieyan', subject: 'English', rating: 3.5, difficulty: 2.0})
reed = Professor.create!({name: 'William Reed', subject: 'Japanese Culture', rating: 2.0, difficulty: 1.0})
toma = Professor.create!({name: 'Masahiro Toma', subject: 'Japanese Language', rating: 3.5, difficulty: 2.0})
sugiyama = Professor.create!({name: 'Kazutaka Sugiyama', subject: 'Literature', rating: 2.5, difficulty: 3.5})
stocker = Professor.create!({name: 'Sam Stocker', subject: 'Art', rating: 2.5, difficulty: 4.5})
puts "creating student_stories"
mike_student1 = StudentStory.create!({title: 'Mike Blow has tough classes', text: 'Gave such hard quizzes', date: Date.today, professor_id: mike.id })
darren_student2 = StudentStory.create!(title: 'Darren has easy classes', text: 'You just watch movies', date: Date.today, professor_id: darren.id )
darren_student3 = StudentStory.create!(title: 'Darren has fun classes', text: 'Eaaaaaaasy peasy lemon squeasy', date: Date.today, professor_id: darren.id )
