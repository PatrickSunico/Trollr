class User < ActiveRecord::Base
  # Enables password protection in Users Controller
  has_secure_password
  # validate if email is in correct format
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  # Does not allow to create duplicate emails or usernames
  validates :email, uniqueness: true
  validates :username, uniqueness: true

end
