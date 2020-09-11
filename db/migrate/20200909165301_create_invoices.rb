class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :number
      t.date :billing_date
      t.date :payment_date
      t.float :total
      t.string :your_references
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
