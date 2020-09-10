# == Schema Information
#
# Table name: new_project_requests
#
#  id         :bigint           not null, primary key
#  status     :string           default("pending")
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
require 'test_helper'

class NewProjectRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
