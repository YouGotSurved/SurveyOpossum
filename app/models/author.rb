class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :password_digest, presence: true

  has_secure_password
  has_many :surveys
  
end
