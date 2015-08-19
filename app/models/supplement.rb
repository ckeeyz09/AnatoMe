class Supplement < ActiveRecord::Base
  belongs_to :musclegroup

  extend FriendlyId
  friendly_id :name, use: :slugged
end
