# frozen_string_literal: true

# User - sets & defines user model for authentication, interaction
class User < ApplicationRecord
  has_many :photos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  class << self
    def from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first

      user ||= User.create(
        email: data['email'],
        password: Devise.friendly_token[0, 20]
      )
      user
    end

    def uploaded_daily_photo?(user_id)
      current_date = DateTime.current

      joins(:photos).where(photos:
        {
          user_id: user_id,
          upload_date: current_date
        }
      ).exists?
    end
  end
end
