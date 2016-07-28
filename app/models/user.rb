class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }

  has_secure_password
  validates :password, length: { minimum: 6 }

end
