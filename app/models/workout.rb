class Workout < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments
  belongs_to :musclegroups

  extend FriendlyId
  friendly_id :name, use: :slugged
end
