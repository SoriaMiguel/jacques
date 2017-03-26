# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  user = User.create!(
    api_token: SecureRandom.uuid,
    username: Faker::Internet.user_name,
    email: Faker::Internet.safe_email,
    password: '1234'
    )

  3.times do
    user.notes.create!(
    title: Faker::Book.title,
    body: Faker::Hipster.paragraphs(6).join("\n\n"),
    created_at: rand(1..4999).days.ago,
    tags: 5.times.collect{Tag.find_or_create_by!(name: Faker::Company.buzzword.gsub(%r(\s), "_"))}
    )

  end
end
