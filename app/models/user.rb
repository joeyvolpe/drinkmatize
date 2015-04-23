class User < ActiveRecord::Base
    has_many :drinks
    attr_reader :password

    def password=(unencrypted_password)
        unless unencrypted_password.empty?
            @password = unencrypted_password
            self.password_digest = BCrypt::Password.create(unencrypted_password)
        end
    end

    def authenticate(unencrypted_password)
        if BCrypt::Password.new(self.password_digest) == unencrypted_password
            return self
        else
            return false
        end
    end

    # def create
    #     @user = User.find(params[:id])
    #     @drink = @user.drinks
end
