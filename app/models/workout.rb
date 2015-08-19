class Workout < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments
  belongs_to :musclegroup
  # has_many :supplements, through: :musclegroups

  extend FriendlyId
  friendly_id :name, use: :slugged
end
