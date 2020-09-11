# == Schema Information
#
# Table name: new_project_requests
#
#  id         :bigint           not null, primary key
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_new_project_requests_on_project_id  (project_id)
#  index_new_project_requests_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#  fk_rails_...  (user_id => users.id)
#
class NewProjectRequest < ApplicationRecord
  belongs_to :users
  belongs_to :projects
  enum status: %w(pending counteroffer accepted declined)
  SPECIALTY = ["Business Development", "Account Management", "Sales", "Web-Development", "Recruitment"]
  PAY = ["Per Hour", "Project Based", "Monthly", "Commission Based" ]
  EMPTYPE = ["Full Time", "Part Time", "Contractor"]
end
