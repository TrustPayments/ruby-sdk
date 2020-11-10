[![Build Status](https://travis-ci.org/TrustPayments/ruby-sdk.svg?branch=master)](https://travis-ci.org/TrustPayments/ruby-sdk)

# Trust Payments Ruby Library

The Trust Payments Ruby library wraps around the Trust Payments API. This library facilitates your interaction with various services such as transactions, accounts, and subscriptions.

## Documentation

[Trust Payments Web Service API](https://ep.trustpayments.com/doc/api/web-service)

## Requirements

- Ruby 2.2+

## Installation

# RubyGem install (recommended)

```sh
$ gem install trustpayments-ruby-sdk
```

## Usage
The library needs to be configured with your account's space id, user id, and secret key which are available in your [Trust Payments
account dashboard](https://ep.trustpayments.com/account/select). Set `space_id`, `user_id`, and `api_secret` to their values:

### Configuring a Service

```ruby
require 'trustpayments-ruby-sdk'

space_id = 405
app_user_id = 512
app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="

TrustPayments.configure do |config|
  config.user_id = app_user_id
  config.authentication_key = app_user_key
end

# TransactionService
transaction_service = TrustPayments::TransactionService.new
# TransactionPaymentPageService
transaction_payment_page_service = TrustPayments::TransactionPaymentPageService.new
```

To get stated with sending transactions you can review the example below:

```ruby
require 'trustpayments-ruby-sdk'

space_id = 405
app_user_id = 512
app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="

TrustPayments.configure do |config|
    config.user_id = app_user_id
    config.authentication_key = app_user_key
end

# TransactionService
transaction_service = TrustPayments::TransactionService.new
# TransactionPaymentPageService
transaction_payment_page_service = TrustPayments::TransactionPaymentPageService.new

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

transaction = transaction_service.create(space_id, transaction)
payment_page_url = transaction_payment_page_service.payment_page_url(space_id, transaction.id)
# redirect to payment_page_url
```

## License

Please see the [license file](https://github.com/TrustPayments/ruby-sdk/blob/master/LICENSE) for more information.
