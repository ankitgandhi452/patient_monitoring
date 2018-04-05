class CompletedTask < ApplicationRecord
    validates :completion_date, presence: { message: "Completion Date Cannot be blank" }
    validates :task_id, uniqueness: { message: "This task is already completed" }
    belongs_to :task
end
