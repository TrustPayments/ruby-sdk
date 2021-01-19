require 'test/unit'
require 'trustpayments-ruby-sdk'

class TestConditionTypeAll < Test::Unit::TestCase

  def test_condition_type_all
    
    app_user_id = 512
    app_user_key = "FKrO76r5VwJtBrqZawBspljbBNOxp5veKQQkOnZxucQ="
    
    TrustPayments.configure do |config|
      config.user_id = app_user_id
      config.authentication_key = app_user_key
    end

    condition_type_service = TrustPayments::ConditionTypeService.new

    condition_types, status_code = condition_type_service.all_with_http_info()
    assert_equal(200, status_code)
  end
  
end
