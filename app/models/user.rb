class User < ActiveRecord::Base
  validates :email,  presence: true, uniqueness: { case_sensative: false }

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    @user = User.find_by_email(email.downcase.strip)
    if user && user.authenticate(password)
        return user
      else
        return nil
      end
  end

end 