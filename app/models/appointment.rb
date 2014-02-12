class Appointment < ActiveRecord::Base
  #Attributes & Variables ---------------

  #Relations ----------------------------
  belongs_to :doctor, class_name: 'User',foreign_key: 'doctor_id'
  belongs_to :created_by, class_name: 'User',foreign_key: 'receptionist_id'
  has_one :information

  #Scopes -------------------------------

  #Validations goes here ----------------
  validates :date_of_visit,:pet,:customer,:reminder_of_appointment,:reason_for_visit,presence: true

  #Callbacks goes here ------------------

  #- Class Methods
  class << self

  end

# Instance and other methods

end
