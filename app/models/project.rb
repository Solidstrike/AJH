# == Schema Information
#
# Table name: projects
#
#  id                      :bigint           not null, primary key
#  city                    :string
#  company                 :string
#  company_description     :text
#  country                 :string
#  employment_type         :string
#  ends_at                 :date
#  headline                :string
#  house_number            :integer
#  house_number_additional :string
#  image                   :string
#  image_company_logo      :string
#  job_description         :text
#  lat                     :float
#  lng                     :float
#  pay_type                :string
#  postcode                :string
#  salary                  :float
#  specialty               :string
#  starts_at               :date
#  street                  :string
#  title                   :string
#  url                     :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  user_id                 :bigint           not null
#
# Indexes
#
#  index_projects_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
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
  
end
