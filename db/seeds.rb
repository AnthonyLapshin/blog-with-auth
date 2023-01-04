require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Post.destroy_all
posts_count = 5
users = User.create([{email: "test1@lapshin.dev", password: "12345678"}, {email: "test2@lapshin.dev", password: "12345678"}])
p "Created #{users.count} users with #{users.count*posts_count} posts"
users.each do |user|
    posts_count.times{
        user.posts.new(title: "Yoda said", body: Faker::Quote.yoda)
    }
    user.save
end