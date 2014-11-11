class User < ActiveRecord::Base
  include BCrypt

  # validates :name, :length => { :minimum => 3, :message => "must be at least 3 characters, fool!" } # How does this error message get seen?
  # validates :email, :uniqueness => true, :format => /.+@.+\..+/ # imperfect, but okay

  has_secure_password

  has_many :reviews
end
