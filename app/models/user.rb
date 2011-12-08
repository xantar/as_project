class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :firstname, :lastname, :password, :password_confirmation, :manager, :employeed

  attr_accessor :password
  before_save :prepare_password

  validates_presence_of :username
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_uniqueness_of :username
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :message => "should only contain letters, numbers, or .-_@"
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :allow_blank => true

  has_many :clutches
  has_many :hatches
  has_many :morphs
  has_many :dragons
  has_many :weights
  has_many :treatments
  has_many :locations

  # login can be either username or email address

  def status
    if employeed
      "Employeed"
    else
      "Dismissed"
    end
  end

  def unused
    if dragons.count > 0 ||
       weights.count > 0 ||
      clutches.count > 0 ||
       hatches.count > 0 ||
    treatments.count > 0 ||
     locations.count > 0   

      false
    else
      true
    end
  end

  def self.authenticate(login, pass)
    user = find_by_username(login)
    return user if user && user.password_hash == user.encrypt_password(pass)
  end

  def encrypt_password(pass)
    BCrypt::Engine.hash_secret(pass, password_salt)
  end

  private

  def prepare_password
    unless password.blank?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = encrypt_password(password)
    end
  end
end
