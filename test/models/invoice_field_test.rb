# == Schema Information
#
# Table name: invoice_fields
#
#  id          :bigint           not null, primary key
#  description :string
#  end_at      :date
#  hours       :float
#  rate        :float
#  start_at    :date
#  total       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  invoice_id  :bigint           not null
#
# Indexes
#
#  index_invoice_fields_on_invoice_id  (invoice_id)
#
# Foreign Keys
#
#  fk_rails_...  (invoice_id => invoices.id)
#
require 'test_helper'

class InvoiceFieldTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
