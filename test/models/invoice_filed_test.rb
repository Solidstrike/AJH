# == Schema Information
#
# Table name: invoice_fileds
#
#  id          :bigint           not null, primary key
#  description :text
#  end_at      :date
#  hours       :float
#  rate        :float
#  start_at    :date
#  total       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class InvoiceFiledTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
