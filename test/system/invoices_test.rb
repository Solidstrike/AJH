require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Billing date", with: @invoice.billing_date
    fill_in "Number", with: @invoice.number
    fill_in "Payment date", with: @invoice.payment_date
    fill_in "Tax", with: @invoice.tax
    fill_in "Total", with: @invoice.total
    fill_in "Your references", with: @invoice.your_references
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Billing date", with: @invoice.billing_date
    fill_in "Number", with: @invoice.number
    fill_in "Payment date", with: @invoice.payment_date
    fill_in "Tax", with: @invoice.tax
    fill_in "Total", with: @invoice.total
    fill_in "Your references", with: @invoice.your_references
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
