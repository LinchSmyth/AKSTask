module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.name
    end

    protected

    def find_verified_user
      token = Digest::SHA1.hexdigest(cookies[:remember_token])
      if verified_user = User.find_by(remember_token: token)
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
