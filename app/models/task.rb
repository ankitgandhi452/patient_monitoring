class Task < ApplicationRecord
    validates :header, presence: { message: "Header cannot be blank" }
    validates :perform_on, presence: { message: "Header cannot be blank" }
    has_one :completed_task
    belongs_to :user_prescription
end
