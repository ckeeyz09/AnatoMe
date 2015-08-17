class Workout < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments

  extend FriendlyId
  friendly_id :name, use: :slugged
end
