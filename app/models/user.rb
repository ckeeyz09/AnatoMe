class User < ActiveRecord::Base
  attr_accessor :remember_token, :activation_token, :reset_token
  has_many :appointments, dependent: :destroy
  has_many :workouts, through: :appointments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # Sets the password reset attributes.
  def create_reset_digest
    self.reset_token = User.new_token
    # update_attribute(:reset_digest,  User.digest(reset_token))
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  extend FriendlyId
  friendly_id :username, use: :slugged

  # Sends password reset email.
  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end



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

  private

  # Converts email to all lower-case.
  def downcase_email
      self.email = email.downcase
  end                    

end
