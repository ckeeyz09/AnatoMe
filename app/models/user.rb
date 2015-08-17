class User < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
  has_many :workouts, through: :appointments
  has_secure_password

  extend FriendlyId
  friendly_id :username, use: :slugged

end
