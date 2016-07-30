class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  has_secure_password
  validates :password, length: { minimum: 6 }
    # chat rooms
  has_many :rooms, dependent: :destroy
    # avatars
  has_attached_file :avatar, styles: { medium: '250x250>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
