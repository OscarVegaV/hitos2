# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tweet.destroy_all
User.destroy_all

u = User.create!(name: 'Juan', email: 'juan@example.com', password: '123123')

200.times do |i| 

  Tweet.create!(user_id:u.id, title:'Mi Tweet', content: "Mi primer comentario")
  puts "++++++++++++"
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?