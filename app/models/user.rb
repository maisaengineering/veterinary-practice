class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Attributes & Variables ---------------
  ROLES = %w[admin doctor receptionist]

  #Relations ----------------------------
  has_many :appointments,foreign_key: 'doctor_id'


  #Scopes -------------------------------
  scope :doctors, -> { where(role: 'doctor')}
  scope :receptionist, ->{where(role: 'receptionist').first}

  #Validations goes here ----------------

  #Callbacks goes here ------------------

  #- Class Methods
  class << self

  end

  # Instance / other methods

end
