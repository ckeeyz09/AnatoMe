class User < ActiveRecord::Base
  has_many :appointments, dependent: :destroy
  has_many :workouts, through: :appointments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end


  extend FriendlyId
  friendly_id :username, use: :slugged

  has_attached_file :avatar,
                   :styles => { :medium => "150x150>", :thumb => "44x44#" },
                   :default_url => "/images/:style/missing.png"

  validates :email,
      presence: true,
      uniqueness: true,
      format: {
        with: /@/,
        message: "not a valid format"
      }

  validates :username,
      presence: true,
      uniqueness: true

  has_secure_password

  validates_attachment :avatar, :presence => true,
                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/jpg", "image/png"] },
                      :size => { :in => 0..1000000000.kilobytes }

end
