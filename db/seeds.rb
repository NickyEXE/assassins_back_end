# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#
# Game.destroy_all
#
# 10.times do Game.create({
#   start_time: Faker::Time.backward(14, :evening)
# }) end

User.destroy_all

20.times do User.create({
    name: Faker::Name.first_name,
    alias: Faker::Name.first_name,
    latitude: nil,
    longitude: nil,
    secret_code: Faker::Hacker.adjective + " " + Faker::Creature::Animal.name,
    target_id: nil,
    game_id: nil,
    image_url: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/21150041_10209334035291847_5910278191037324042_n.jpg?_nc_cat=102&_nc_ht=scontent-lga3-1.xx&oh=8f7f93c527ab3b525fa25d358088c943&oe=5D5CFA70",
    password_digest: 123456
    })
end
#
# Kill.destroy_all
#
# 30.times do Kill.create({
#       killer_id: (1..20).sort_by{rand}[1],
#       victim_id: (1..20).sort_by{rand}[1],
#       latitude: Faker::Number.decimal(2, 6),
#       longitude: Faker::Number.decimal(2, 6),
#       game_id: (1..10).sort_by{rand}[1],
#       time: Faker::Time.backward(14, :evening)
#       })
# end
