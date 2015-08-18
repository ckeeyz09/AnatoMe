class Food < ActiveRecord::Base
  belongs_to :musclegroups

  extend FriendlyId
  friendly_id :name, use: :slugged
end
