namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "User",
                         email: "user@domain.com",
                         password: "password",
                         password_confirmation: "password")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "user#{n+1}@domain.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end