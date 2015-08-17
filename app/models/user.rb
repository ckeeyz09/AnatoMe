class User < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
  has_many :workouts, through: :appointments


  extend FriendlyId
  friendly_id :username, use: :slugged

  has_attached_file :avatar,
                   :styles => { :medium => "150x150>", :thumb => "44x44#" },
                   :default_url => "/images/:style/missing.png"

  validates_uniqueness_of :email 

  has_secure_password

 validates_attachment :avatar, :presence => true,
                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/jpg", "image/png"] },
                      :size => { :in => 0..1000000000.kilobytes }

end
