# == Schema Information
#
# Table name: invoces
#
#  id              :bigint           not null, primary key
#  billing_date    :date
#  number          :string
#  payment_date    :date
#  tax             :integer
#  total           :float
#  your_references :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_invoces_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class InvoceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
