class Prescription < ApplicationRecord
    mount_uploader :image, UserPrescriptionImageUploader
    validates :image, presence: { message: "Please upload an Image to Proceed" }
    belongs_to :user_prescription, optional: true
end
