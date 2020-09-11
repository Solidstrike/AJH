class CreateInvoiceFields < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_fields do |t|
      t.date :start_at
      t.date :end_at
      t.string :description
      t.float :hours
      t.float :rate
      t.float :total
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
