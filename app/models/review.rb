class Review < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users

  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
end
