class Musclegroup < ActiveRecord::Base
  has_many :foods
  has_many :supplements
  has_many :workouts



  extend FriendlyId
  friendly_id :name, use: :slugged
end
