class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }

end
