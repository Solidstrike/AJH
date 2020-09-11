json.extract! invoice, :id, :number, :billing_date, :payment_date, :tax, :total, :your_references, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
