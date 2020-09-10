# == Schema Information
#
# Table name: invoices
#
#  id              :bigint           not null, primary key
#  billing_date    :date
#  number          :string
#  payment_date    :date
#  total           :float
#  your_references :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null
#
# Indexes
#
#  index_invoices_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Invoice < ApplicationRecord
  belongs_to :user

  DUTCH_TAX = 0.21

  has_many :invoice_fields, inverse_of: :invoice
  accepts_nested_attributes_for :invoice_fields, reject_if: :all_blank, allow_destroy: true

  before_validation do
    self.number = generate_number
    self.total = count_total
  end

  def generate_number
    loop do
      gen = "invoice-#{Date.today}-#{SecureRandom.hex(4)}"
      break gen if Invoice.find_by(number: gen).blank?
    end
  end

  def count_total
    arr = invoice_fields.do do  |invoice_field|
      invoice_field.total = invoice_field.count_total
      invoice_field.total
    end
    arr.sum 
  end

  def tax
    total.to_f * DUTCH_TAX
  end

  def total_with_tax
    total * (1 + DUTCH_TAX)
  end
end
