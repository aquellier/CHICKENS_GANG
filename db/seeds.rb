# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
ChickensGang.destroy_all
user1 = User.create!(first_name: "A", last_name: "B", address: "C", email: "diogo@fesf.fr", password: "diogo1", photo: "https://kitt.lewagon.com/placeholder/users/gittelo")
user2 = User.create!(first_name: "A2", last_name: "B2", address: "C2", email: "diogo2@fesf.fr", password: "diogo1",  photo: "https://kitt.lewagon.com/placeholder/users/gittelo")
user3 = User.create!(first_name: "A3", last_name: "B3", address: "C3", email: "diogo3@fesf.fr", password: "diogo1",  photo: "https://kitt.lewagon.com/placeholder/users/gittelo")
user4 = User.create!(first_name: "A4", last_name: "B4", address: "C4", email: "diogo4@fesf.fr", password: "diogo1",  photo: "https://kitt.lewagon.com/placeholder/users/gittelo")
user5 = User.create!(first_name: "A5", last_name: "B4", address: "C5", email: "diogo5@fesf.fr", password: "diogo1",  photo: "https://kitt.lewagon.com/placeholder/users/gittelo")

ChickensGang.create!(gang_name: "Gang1", breed: "Silkie", capacity: 4, price: 10, owner_id: 1)
ChickensGang.create!(gang_name: "Gang2", breed: "Plymouth Rock", capacity: 4, price: 10, owner_id: 2)
ChickensGang.create!(gang_name: "Gang3", breed: "Orpington", capacity: 4, price: 10, owner_id: 2)
ChickensGang.create!(gang_name: "Gang4", breed: "Legorne", capacity: 4, price: 10, owner_id: 2)
ChickensGang.create!(gang_name: "Gang5", breed: "Brahma", capacity: 4, price: 10, owner_id: 2)

Renting.create!(user: User.find(1), chickens_gang: ChickensGang.find(1))
Renting.create!(user: User.find(2), chickens_gang: ChickensGang.find(2))
Renting.create!(user: User.find(3), chickens_gang: ChickensGang.find(3))
Renting.create!(user: User.find(4), chickens_gang: ChickensGang.find(4))
Renting.create!(user: User.find(5), chickens_gang: ChickensGang.find(5))

Review.create!(user: User.find(1), chickens_gang: ChickensGang.find(1), rating: 3)
Review.create!(user: User.find(2), chickens_gang: ChickensGang.find(2), rating: 2)
Review.create!(user: User.find(3), chickens_gang: ChickensGang.find(3), rating: 3)
Review.create!(user: User.find(4), chickens_gang: ChickensGang.find(4), rating: 4)
Review.create!(user: User.find(5), chickens_gang: ChickensGang.find(5), rating: 4)

