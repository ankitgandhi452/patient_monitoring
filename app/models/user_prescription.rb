class UserPrescription < ApplicationRecord
    validates :doctor_name, presence: { message: "Please Provide Doctor's Name" }
    validates :prescriptions, :length => { :minimum => 1 }
    
    has_many :tasks
    has_many :prescriptions
    has_many :completed_tasks, through: :tasks
    belongs_to :user, class_name: 'User'
end
