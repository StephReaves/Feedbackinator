require 'faker'

# create a few users

5.times do
  User.create! :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

3.times do
  Review.create :title => Faker::Lorem.sentence, :text => Faker::Lorem.paragraph, :sender => User.all.sample, :receiver => User.all.sample
end

# TODO: create associations between users and topics
