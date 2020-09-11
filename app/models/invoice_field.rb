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
#O
class InvoiceField < ApplicationRecord
  belongs_to :invoice

  def count_total
    (rate * hours).round(2)
  end

  def date_range
    start_at..end_at
  end
end
