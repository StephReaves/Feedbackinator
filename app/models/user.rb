class User < ActiveRecord::Base
  include BCrypt

  # validates :name, :length => { :minimum => 3, :message => "must be at least 3 characters, fool!" } # How does this error message get seen?
  # validates :email, :uniqueness => true, :format => /.+@.+\..+/ # imperfect, but okay

  has_secure_password

  has_many :sent_reviews, class_name: "Review", foreign_key: :sender_id
  has_many :received_reviews, class_name: "Review", foreign_key: :sender_id
end
