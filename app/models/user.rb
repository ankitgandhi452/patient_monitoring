class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable, :lockable
  include DeviseTokenAuth::Concerns::User

  validates :email, uniqueness: { case_sensitive: false, message: "Email Already Register with us!. Please Sign In." }
  validates :mobile_number, uniqueness: { case_sensitive: false, message: "This Mobile Number is already Register with another Email Address." }

  validates :first_name, presence: { message: "First Name Cannot be Blank" }
  validates :last_name, presence: { message: "Last Name Cannot be Blank" }
  validates :email, presence: { message: "Email Cannot be Blank" }
  validates :mobile_number, presence: { message: "Mobile Number Cannot be Blank" }

  validates :age, numericality: { only_integer: true, greater_than: 0 }

  validates :mobile_number, :length => { :minimum => 10, :maximum => 10 }, :format => { with: /[0-9]+/ }

  has_many :user_prescriptions
  has_many :tasks, through: :user_prescriptions
  has_many :completed_tasks, through: :user_prescriptions
end
