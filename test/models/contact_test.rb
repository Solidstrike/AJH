# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  comment    :text
#  email      :string
#  name       :string
#  subject    :string
#  telephone  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
