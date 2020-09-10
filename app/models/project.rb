class Project < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :new_project_request, dependent: :destroy
  belongs_to :user
  has_one_attached :image
  has_one_attached :image_company_logo

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?

  validates :title, presence: true
  validates :company, presence: true
  validates :headline, presence: true
  validates :job_description, presence: true
  validates :starts_at, presence: true
  # validates :specialty, inclusion: {in:SPECIALTY}
  # validates :pay_type, inclusion: {in:PAY}
  # validates :employment_type, inclusion: {in:EMPTYPE}
  SPECIALTY = ["Business Development", "Account Management", "Sales", "Web-Development", "Recruitment"]
PAY = ["Per Hour", "Project Based", "Monthly", "Commission Based" ]
EMPTYPE = ["Full Time", "Part Time", "Contractor"]
end
