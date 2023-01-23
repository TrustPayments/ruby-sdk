require 'test/unit'
require 'trustpayments-ruby-sdk'

class TestTransactionCreate < Test::Unit::TestCase

  def test_create
    
    space_id = 405
    app_user_id = 512
    app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="
    
    TrustPayments.configure do |config|
      config.user_id = app_user_id
      config.authentication_key = app_user_key
      config.default_headers = {"x-meta-header-ruby": 'value', "x-meta-header-ruby-2": 'value2'}
      config.timeout = 60
    end

    transaction_service = TrustPayments::TransactionService.new
    
    transaction = TrustPayments::TransactionCreate.new({
      billingAddress: TrustPayments::AddressCreate.new({
        city: "City",
        country: "US",
        emailAddress: "billing@address.com",
        familyName: "Family",
        givenName: "Given",
        postCode: "98100",
        postalState: "WA",
        street: "Street"
      }),
      currency: 'EUR',
      customerEmailAddress: "test@example.com",
      customerPresence: TrustPayments::CustomersPresence::VIRTUAL_PRESENT,
      failedUrl: "http://localhost/failure",
      invoiceMerchantReference: "order-1",
      language: "en_US",
      lineItems: [
        TrustPayments::LineItemCreate.new({
          amountIncludingTax: 29.60,
          name: "Item 1",
          quantity: 1,
          shippingRequired: true,
          sku: "sku-1",
          taxes: [
            TrustPayments::TaxCreate.new({
              rate: 8,
              title: "VAT"
	        })
          ],
          type: TrustPayments::LineItemType::PRODUCT,
          uniqueId: "unique-id-item-1",
        }),
        TrustPayments::LineItemCreate.new({
          amountIncludingTax: 5.60,
          name: "Test Shipping",
          quantity: 1,
          shippingRequired: false,
          sku: "test-shipping",
          taxes: [
            TrustPayments::TaxCreate.new({
              rate: 8,
              title: "VAT"
            })
          ],
          type: TrustPayments::LineItemType::SHIPPING,
          uniqueId: "unique-id-shipping-1",
        }),
      ],
      merchantReference: "order-1",
      shippingAddress: TrustPayments::AddressCreate.new({
        city: "City",
        country: "US",
        emailAddress: "shipping@address.com",
        familyName: "Family",
        givenName: "Given",
        postCode: "98100",
        postalState: "WA",
        street: "Street"
      }),
      shippingMethod: "Test Shipping",
      successUrl: "http://localhost/success"
    })

    transaction, status_code = transaction_service.create_with_http_info(space_id, transaction)
    assert_equal(200, status_code )
    assert_equal(35.2, transaction.authorization_amount)
    assert_equal(space_id, transaction.linked_space_id)
  end
  
end
