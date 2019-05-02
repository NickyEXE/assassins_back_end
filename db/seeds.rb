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
    current_location_x: Faker::Number.decimal(2, 6),
    current_location_y: Faker::Number.decimal(2, 6),
    secret_code: Faker::Number.number(6),
    target_id: nil,
    game_id: 1
    })
end
#
# Kill.destroy_all
#
# 30.times do Kill.create({
#       killer_id: (1..20).sort_by{rand}[1],
#       victim_id: (1..20).sort_by{rand}[1],
#       kill_location_x: Faker::Number.decimal(2, 6),
#       kill_location_y: Faker::Number.decimal(2, 6),
#       game_id: (1..10).sort_by{rand}[1],
#       time: Faker::Time.backward(14, :evening)
#       })
# end
