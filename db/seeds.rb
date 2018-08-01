# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create(({ name: 'Star Wars' }, { name: 'Lord of the Rings' }))
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Concert.destroy_all

    user1 = User.create(name: "Katie Weber", email: "katieweber@example.com", account_balance: 20, password: "password")
    user2 = User.create(name: "Ryan Edgar", email: "redgar@example.com", account_balance: 60, password: "password")
    user3 = User.create(name: "Meghan Barbera", email: "barberam@example.com", account_balance: 30, password: "password")
    user4 = User.create(name: "Katherine Duggan", email:  "katdug17@example.com", account_balance: 10, password: "password")
    user5 = User.create(name: "John Lytle", email: "littlejohn@example.com", account_balance: 50, password: "password")
    user6 = User.create(name: "Lauren Abrams", email: "labrams10@example.com", account_balance: 100, password: "password")

    concert1 = Concert.create(name: "Greta Van Fleet", date: Date.new(2018, 10, 4), genre: "rock", venue: "The Electric Factory")
    concert2 = Concert.create(name: "The Disco Biscuits", date: Date.new(2018, 12, 29), genre: "trance-fusion", venue: "The Fillmore")
    concert3 = Concert.create(name: "Rae Sremmurd", date: Date.new(2018, 9, 1), genre: "hip-hop", venue: "Union Transfer")
    concert4 = Concert.create(name: "STS9", date: Date.new(2018, 9, 1), genre: "trance-fusion", venue: "The Mann Center")
    concert5 = Concert.create(name: "Modern Baseball", date: Date.new(2018, 8, 31), genre: "rock", venue: "Union Transfer")
    concert6 = Concert.create(name: "Chris Lake", date: Date.new(2018, 11, 9), genre: "house", venue: "NOTO")
    concert7 = Concert.create(name: "Green Velvet", date: Date.new(2018, 8, 18), genre: "house", venue: "Coda")
    concert8 = Concert.create(name: "Kamasi Washington", date: Date.new(2018, 11, 6), genre: "jazz", venue: "Electric Factory"),
    concert9 = Concert.create(name: "Drake", date: Date.new(2018, 9, 20), genre: "hip-hop", venue: "Wells Fargo Center")
