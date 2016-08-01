module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.name
    end

    protected

    def find_verified_user # this checks whether a user is authenticated with devise
      if User.find_by(remember_token: remember_token)
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
