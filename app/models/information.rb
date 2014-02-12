class Information < ActiveRecord::Base

  #Attributes & Variables ---------------

  #Relations ----------------------------
  belongs_to :appointment
  belongs_to :created_by, class_name: 'User',foreign_key: 'doctor_id'


 #Scopes -------------------------------

#Validations goes here ----------------

#Callbacks goes here ------------------

#- Class Methods
  class << self

  end

# Instance and other methods


end
