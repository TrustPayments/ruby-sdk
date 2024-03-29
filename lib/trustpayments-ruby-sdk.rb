=begin
The Trust Payments API allows an easy interaction with the Trust Payments web service.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

# Common files
require 'trustpayments-ruby-sdk/api_client'
require 'trustpayments-ruby-sdk/api_error'
require 'trustpayments-ruby-sdk/version'
require 'trustpayments-ruby-sdk/configuration'

# Models
require 'trustpayments-ruby-sdk/models/abstract_account_update'
require 'trustpayments-ruby-sdk/models/abstract_application_user_update'
require 'trustpayments-ruby-sdk/models/abstract_customer_active'
require 'trustpayments-ruby-sdk/models/abstract_customer_address_active'
require 'trustpayments-ruby-sdk/models/abstract_customer_comment_active'
require 'trustpayments-ruby-sdk/models/abstract_human_user_update'
require 'trustpayments-ruby-sdk/models/abstract_payment_link_update'
require 'trustpayments-ruby-sdk/models/abstract_refund_comment_active'
require 'trustpayments-ruby-sdk/models/abstract_space_update'
require 'trustpayments-ruby-sdk/models/abstract_subscriber_update'
require 'trustpayments-ruby-sdk/models/abstract_subscription_affiliate_update'
require 'trustpayments-ruby-sdk/models/abstract_subscription_metric_update'
require 'trustpayments-ruby-sdk/models/abstract_subscription_product_active'
require 'trustpayments-ruby-sdk/models/abstract_token_update'
require 'trustpayments-ruby-sdk/models/abstract_transaction_comment_active'
require 'trustpayments-ruby-sdk/models/abstract_transaction_invoice_comment_active'
require 'trustpayments-ruby-sdk/models/abstract_transaction_pending'
require 'trustpayments-ruby-sdk/models/abstract_webhook_listener_update'
require 'trustpayments-ruby-sdk/models/abstract_webhook_url_update'
require 'trustpayments-ruby-sdk/models/account'
require 'trustpayments-ruby-sdk/models/account_state'
require 'trustpayments-ruby-sdk/models/account_type'
require 'trustpayments-ruby-sdk/models/address'
require 'trustpayments-ruby-sdk/models/address_create'
require 'trustpayments-ruby-sdk/models/authenticated_card_data_create'
require 'trustpayments-ruby-sdk/models/card_authentication_response'
require 'trustpayments-ruby-sdk/models/card_authentication_version'
require 'trustpayments-ruby-sdk/models/card_cryptogram'
require 'trustpayments-ruby-sdk/models/card_cryptogram_create'
require 'trustpayments-ruby-sdk/models/card_cryptogram_type'
require 'trustpayments-ruby-sdk/models/cardholder_authentication'
require 'trustpayments-ruby-sdk/models/cardholder_authentication_create'
require 'trustpayments-ruby-sdk/models/charge_attempt_environment'
require 'trustpayments-ruby-sdk/models/charge_attempt_state'
require 'trustpayments-ruby-sdk/models/charge_flow'
require 'trustpayments-ruby-sdk/models/charge_flow_level_configuration'
require 'trustpayments-ruby-sdk/models/charge_flow_level_configuration_type'
require 'trustpayments-ruby-sdk/models/charge_flow_level_state'
require 'trustpayments-ruby-sdk/models/charge_state'
require 'trustpayments-ruby-sdk/models/charge_type'
require 'trustpayments-ruby-sdk/models/client_error'
require 'trustpayments-ruby-sdk/models/client_error_type'
require 'trustpayments-ruby-sdk/models/completion_line_item'
require 'trustpayments-ruby-sdk/models/completion_line_item_create'
require 'trustpayments-ruby-sdk/models/condition'
require 'trustpayments-ruby-sdk/models/condition_type'
require 'trustpayments-ruby-sdk/models/connector_invocation_stage'
require 'trustpayments-ruby-sdk/models/creation_entity_state'
require 'trustpayments-ruby-sdk/models/criteria_operator'
require 'trustpayments-ruby-sdk/models/customer'
require 'trustpayments-ruby-sdk/models/customer_address'
require 'trustpayments-ruby-sdk/models/customer_address_type'
require 'trustpayments-ruby-sdk/models/customer_comment'
require 'trustpayments-ruby-sdk/models/customer_postal_address'
require 'trustpayments-ruby-sdk/models/customer_postal_address_create'
require 'trustpayments-ruby-sdk/models/customers_presence'
require 'trustpayments-ruby-sdk/models/data_collection_type'
require 'trustpayments-ruby-sdk/models/database_translated_string'
require 'trustpayments-ruby-sdk/models/database_translated_string_create'
require 'trustpayments-ruby-sdk/models/database_translated_string_item'
require 'trustpayments-ruby-sdk/models/database_translated_string_item_create'
require 'trustpayments-ruby-sdk/models/delivery_indication_decision_reason'
require 'trustpayments-ruby-sdk/models/delivery_indication_state'
require 'trustpayments-ruby-sdk/models/document_template'
require 'trustpayments-ruby-sdk/models/document_template_type'
require 'trustpayments-ruby-sdk/models/document_template_type_group'
require 'trustpayments-ruby-sdk/models/entity_export_request'
require 'trustpayments-ruby-sdk/models/entity_query'
require 'trustpayments-ruby-sdk/models/entity_query_filter'
require 'trustpayments-ruby-sdk/models/entity_query_filter_type'
require 'trustpayments-ruby-sdk/models/entity_query_order_by'
require 'trustpayments-ruby-sdk/models/entity_query_order_by_type'
require 'trustpayments-ruby-sdk/models/environment'
require 'trustpayments-ruby-sdk/models/failure_category'
require 'trustpayments-ruby-sdk/models/failure_reason'
require 'trustpayments-ruby-sdk/models/feature'
require 'trustpayments-ruby-sdk/models/feature_category'
require 'trustpayments-ruby-sdk/models/gender'
require 'trustpayments-ruby-sdk/models/human_user'
require 'trustpayments-ruby-sdk/models/label'
require 'trustpayments-ruby-sdk/models/label_descriptor'
require 'trustpayments-ruby-sdk/models/label_descriptor_category'
require 'trustpayments-ruby-sdk/models/label_descriptor_group'
require 'trustpayments-ruby-sdk/models/label_descriptor_type'
require 'trustpayments-ruby-sdk/models/legal_organization_form'
require 'trustpayments-ruby-sdk/models/line_item'
require 'trustpayments-ruby-sdk/models/line_item_attribute'
require 'trustpayments-ruby-sdk/models/line_item_attribute_create'
require 'trustpayments-ruby-sdk/models/line_item_create'
require 'trustpayments-ruby-sdk/models/line_item_reduction'
require 'trustpayments-ruby-sdk/models/line_item_reduction_create'
require 'trustpayments-ruby-sdk/models/line_item_type'
require 'trustpayments-ruby-sdk/models/localized_string'
require 'trustpayments-ruby-sdk/models/manual_task'
require 'trustpayments-ruby-sdk/models/manual_task_action'
require 'trustpayments-ruby-sdk/models/manual_task_action_style'
require 'trustpayments-ruby-sdk/models/manual_task_state'
require 'trustpayments-ruby-sdk/models/manual_task_type'
require 'trustpayments-ruby-sdk/models/one_click_payment_mode'
require 'trustpayments-ruby-sdk/models/payment_connector'
require 'trustpayments-ruby-sdk/models/payment_connector_configuration'
require 'trustpayments-ruby-sdk/models/payment_connector_feature'
require 'trustpayments-ruby-sdk/models/payment_contract'
require 'trustpayments-ruby-sdk/models/payment_contract_state'
require 'trustpayments-ruby-sdk/models/payment_contract_type'
require 'trustpayments-ruby-sdk/models/payment_information_hash'
require 'trustpayments-ruby-sdk/models/payment_information_hash_type'
require 'trustpayments-ruby-sdk/models/payment_link'
require 'trustpayments-ruby-sdk/models/payment_link_address_handling_mode'
require 'trustpayments-ruby-sdk/models/payment_link_protection_mode'
require 'trustpayments-ruby-sdk/models/payment_link_update'
require 'trustpayments-ruby-sdk/models/payment_method'
require 'trustpayments-ruby-sdk/models/payment_method_brand'
require 'trustpayments-ruby-sdk/models/payment_method_configuration'
require 'trustpayments-ruby-sdk/models/payment_primary_risk_taker'
require 'trustpayments-ruby-sdk/models/payment_processor'
require 'trustpayments-ruby-sdk/models/payment_processor_configuration'
require 'trustpayments-ruby-sdk/models/payment_terminal'
require 'trustpayments-ruby-sdk/models/payment_terminal_address'
require 'trustpayments-ruby-sdk/models/payment_terminal_configuration'
require 'trustpayments-ruby-sdk/models/payment_terminal_configuration_state'
require 'trustpayments-ruby-sdk/models/payment_terminal_configuration_version'
require 'trustpayments-ruby-sdk/models/payment_terminal_configuration_version_state'
require 'trustpayments-ruby-sdk/models/payment_terminal_dcc_transaction_sum'
require 'trustpayments-ruby-sdk/models/payment_terminal_location'
require 'trustpayments-ruby-sdk/models/payment_terminal_location_state'
require 'trustpayments-ruby-sdk/models/payment_terminal_location_version'
require 'trustpayments-ruby-sdk/models/payment_terminal_location_version_state'
require 'trustpayments-ruby-sdk/models/payment_terminal_receipt_type'
require 'trustpayments-ruby-sdk/models/payment_terminal_state'
require 'trustpayments-ruby-sdk/models/payment_terminal_transaction_sum'
require 'trustpayments-ruby-sdk/models/payment_terminal_transaction_summary'
require 'trustpayments-ruby-sdk/models/payment_terminal_transaction_summary_fetch_request'
require 'trustpayments-ruby-sdk/models/payment_terminal_type'
require 'trustpayments-ruby-sdk/models/permission'
require 'trustpayments-ruby-sdk/models/persistable_currency_amount'
require 'trustpayments-ruby-sdk/models/persistable_currency_amount_update'
require 'trustpayments-ruby-sdk/models/product_fee_type'
require 'trustpayments-ruby-sdk/models/product_metered_fee'
require 'trustpayments-ruby-sdk/models/product_metered_fee_update'
require 'trustpayments-ruby-sdk/models/product_metered_tier_fee'
require 'trustpayments-ruby-sdk/models/product_metered_tier_fee_update'
require 'trustpayments-ruby-sdk/models/product_metered_tier_pricing'
require 'trustpayments-ruby-sdk/models/product_period_fee'
require 'trustpayments-ruby-sdk/models/product_period_fee_update'
require 'trustpayments-ruby-sdk/models/product_setup_fee'
require 'trustpayments-ruby-sdk/models/product_setup_fee_update'
require 'trustpayments-ruby-sdk/models/recurring_indicator'
require 'trustpayments-ruby-sdk/models/refund'
require 'trustpayments-ruby-sdk/models/refund_comment'
require 'trustpayments-ruby-sdk/models/refund_create'
require 'trustpayments-ruby-sdk/models/refund_state'
require 'trustpayments-ruby-sdk/models/refund_type'
require 'trustpayments-ruby-sdk/models/rendered_document'
require 'trustpayments-ruby-sdk/models/rendered_terminal_receipt'
require 'trustpayments-ruby-sdk/models/rendered_terminal_transaction_summary'
require 'trustpayments-ruby-sdk/models/resource_path'
require 'trustpayments-ruby-sdk/models/resource_state'
require 'trustpayments-ruby-sdk/models/rest_address_format'
require 'trustpayments-ruby-sdk/models/rest_address_format_field'
require 'trustpayments-ruby-sdk/models/rest_country'
require 'trustpayments-ruby-sdk/models/rest_country_state'
require 'trustpayments-ruby-sdk/models/rest_currency'
require 'trustpayments-ruby-sdk/models/rest_language'
require 'trustpayments-ruby-sdk/models/role'
require 'trustpayments-ruby-sdk/models/role_state'
require 'trustpayments-ruby-sdk/models/sales_channel'
require 'trustpayments-ruby-sdk/models/scope'
require 'trustpayments-ruby-sdk/models/server_error'
require 'trustpayments-ruby-sdk/models/shopify_additional_line_item_data'
require 'trustpayments-ruby-sdk/models/shopify_integration'
require 'trustpayments-ruby-sdk/models/shopify_integration_payment_app_version'
require 'trustpayments-ruby-sdk/models/shopify_integration_subscription_app_version'
require 'trustpayments-ruby-sdk/models/shopify_transaction_state'
require 'trustpayments-ruby-sdk/models/space'
require 'trustpayments-ruby-sdk/models/space_address'
require 'trustpayments-ruby-sdk/models/space_address_create'
require 'trustpayments-ruby-sdk/models/space_view'
require 'trustpayments-ruby-sdk/models/static_value'
require 'trustpayments-ruby-sdk/models/subscriber'
require 'trustpayments-ruby-sdk/models/subscriber_update'
require 'trustpayments-ruby-sdk/models/subscription'
require 'trustpayments-ruby-sdk/models/subscription_affiliate'
require 'trustpayments-ruby-sdk/models/subscription_affiliate_update'
require 'trustpayments-ruby-sdk/models/subscription_change_request'
require 'trustpayments-ruby-sdk/models/subscription_charge'
require 'trustpayments-ruby-sdk/models/subscription_charge_create'
require 'trustpayments-ruby-sdk/models/subscription_charge_processing_type'
require 'trustpayments-ruby-sdk/models/subscription_charge_state'
require 'trustpayments-ruby-sdk/models/subscription_charge_type'
require 'trustpayments-ruby-sdk/models/subscription_component_configuration'
require 'trustpayments-ruby-sdk/models/subscription_component_reference_configuration'
require 'trustpayments-ruby-sdk/models/subscription_create_request'
require 'trustpayments-ruby-sdk/models/subscription_ledger_entry'
require 'trustpayments-ruby-sdk/models/subscription_ledger_entry_create'
require 'trustpayments-ruby-sdk/models/subscription_ledger_entry_state'
require 'trustpayments-ruby-sdk/models/subscription_metric'
require 'trustpayments-ruby-sdk/models/subscription_metric_type'
require 'trustpayments-ruby-sdk/models/subscription_metric_update'
require 'trustpayments-ruby-sdk/models/subscription_metric_usage_report'
require 'trustpayments-ruby-sdk/models/subscription_metric_usage_report_create'
require 'trustpayments-ruby-sdk/models/subscription_period_bill'
require 'trustpayments-ruby-sdk/models/subscription_period_bill_state'
require 'trustpayments-ruby-sdk/models/subscription_product'
require 'trustpayments-ruby-sdk/models/subscription_product_component'
require 'trustpayments-ruby-sdk/models/subscription_product_component_group'
require 'trustpayments-ruby-sdk/models/subscription_product_component_group_update'
require 'trustpayments-ruby-sdk/models/subscription_product_component_reference'
require 'trustpayments-ruby-sdk/models/subscription_product_component_reference_state'
require 'trustpayments-ruby-sdk/models/subscription_product_component_update'
require 'trustpayments-ruby-sdk/models/subscription_product_retirement'
require 'trustpayments-ruby-sdk/models/subscription_product_retirement_create'
require 'trustpayments-ruby-sdk/models/subscription_product_state'
require 'trustpayments-ruby-sdk/models/subscription_product_version'
require 'trustpayments-ruby-sdk/models/subscription_product_version_pending'
require 'trustpayments-ruby-sdk/models/subscription_product_version_retirement'
require 'trustpayments-ruby-sdk/models/subscription_product_version_retirement_create'
require 'trustpayments-ruby-sdk/models/subscription_product_version_state'
require 'trustpayments-ruby-sdk/models/subscription_state'
require 'trustpayments-ruby-sdk/models/subscription_suspension'
require 'trustpayments-ruby-sdk/models/subscription_suspension_action'
require 'trustpayments-ruby-sdk/models/subscription_suspension_create'
require 'trustpayments-ruby-sdk/models/subscription_suspension_reason'
require 'trustpayments-ruby-sdk/models/subscription_suspension_state'
require 'trustpayments-ruby-sdk/models/subscription_update'
require 'trustpayments-ruby-sdk/models/subscription_update_request'
require 'trustpayments-ruby-sdk/models/subscription_version'
require 'trustpayments-ruby-sdk/models/subscription_version_state'
require 'trustpayments-ruby-sdk/models/tax'
require 'trustpayments-ruby-sdk/models/tax_calculation'
require 'trustpayments-ruby-sdk/models/tax_class'
require 'trustpayments-ruby-sdk/models/tax_create'
require 'trustpayments-ruby-sdk/models/tenant_database'
require 'trustpayments-ruby-sdk/models/terminal_receipt_fetch_request'
require 'trustpayments-ruby-sdk/models/terminal_receipt_format'
require 'trustpayments-ruby-sdk/models/token'
require 'trustpayments-ruby-sdk/models/token_version'
require 'trustpayments-ruby-sdk/models/token_version_state'
require 'trustpayments-ruby-sdk/models/token_version_type'
require 'trustpayments-ruby-sdk/models/tokenization_mode'
require 'trustpayments-ruby-sdk/models/tokenized_card_data'
require 'trustpayments-ruby-sdk/models/tokenized_card_data_create'
require 'trustpayments-ruby-sdk/models/transaction'
require 'trustpayments-ruby-sdk/models/transaction_aware_entity'
require 'trustpayments-ruby-sdk/models/transaction_comment'
require 'trustpayments-ruby-sdk/models/transaction_completion_behavior'
require 'trustpayments-ruby-sdk/models/transaction_completion_mode'
require 'trustpayments-ruby-sdk/models/transaction_completion_request'
require 'trustpayments-ruby-sdk/models/transaction_completion_state'
require 'trustpayments-ruby-sdk/models/transaction_environment_selection_strategy'
require 'trustpayments-ruby-sdk/models/transaction_group'
require 'trustpayments-ruby-sdk/models/transaction_group_state'
require 'trustpayments-ruby-sdk/models/transaction_invoice_comment'
require 'trustpayments-ruby-sdk/models/transaction_invoice_replacement'
require 'trustpayments-ruby-sdk/models/transaction_invoice_state'
require 'trustpayments-ruby-sdk/models/transaction_line_item_version_create'
require 'trustpayments-ruby-sdk/models/transaction_line_item_version_state'
require 'trustpayments-ruby-sdk/models/transaction_state'
require 'trustpayments-ruby-sdk/models/transaction_user_interface_type'
require 'trustpayments-ruby-sdk/models/transaction_void_mode'
require 'trustpayments-ruby-sdk/models/transaction_void_state'
require 'trustpayments-ruby-sdk/models/two_factor_authentication_type'
require 'trustpayments-ruby-sdk/models/user'
require 'trustpayments-ruby-sdk/models/user_account_role'
require 'trustpayments-ruby-sdk/models/user_space_role'
require 'trustpayments-ruby-sdk/models/user_type'
require 'trustpayments-ruby-sdk/models/wallet_type'
require 'trustpayments-ruby-sdk/models/webhook_identity'
require 'trustpayments-ruby-sdk/models/webhook_listener'
require 'trustpayments-ruby-sdk/models/webhook_listener_entity'
require 'trustpayments-ruby-sdk/models/webhook_url'
require 'trustpayments-ruby-sdk/models/account_create'
require 'trustpayments-ruby-sdk/models/account_update'
require 'trustpayments-ruby-sdk/models/application_user'
require 'trustpayments-ruby-sdk/models/application_user_create'
require 'trustpayments-ruby-sdk/models/application_user_update'
require 'trustpayments-ruby-sdk/models/authenticated_card_data'
require 'trustpayments-ruby-sdk/models/charge'
require 'trustpayments-ruby-sdk/models/charge_attempt'
require 'trustpayments-ruby-sdk/models/charge_flow_level'
require 'trustpayments-ruby-sdk/models/charge_flow_level_payment_link'
require 'trustpayments-ruby-sdk/models/connector_invocation'
require 'trustpayments-ruby-sdk/models/customer_active'
require 'trustpayments-ruby-sdk/models/customer_address_active'
require 'trustpayments-ruby-sdk/models/customer_address_create'
require 'trustpayments-ruby-sdk/models/customer_comment_active'
require 'trustpayments-ruby-sdk/models/customer_comment_create'
require 'trustpayments-ruby-sdk/models/customer_create'
require 'trustpayments-ruby-sdk/models/delivery_indication'
require 'trustpayments-ruby-sdk/models/human_user_create'
require 'trustpayments-ruby-sdk/models/human_user_update'
require 'trustpayments-ruby-sdk/models/payment_link_active'
require 'trustpayments-ruby-sdk/models/payment_link_create'
require 'trustpayments-ruby-sdk/models/refund_comment_active'
require 'trustpayments-ruby-sdk/models/refund_comment_create'
require 'trustpayments-ruby-sdk/models/shopify_transaction'
require 'trustpayments-ruby-sdk/models/space_create'
require 'trustpayments-ruby-sdk/models/space_update'
require 'trustpayments-ruby-sdk/models/subscriber_active'
require 'trustpayments-ruby-sdk/models/subscriber_create'
require 'trustpayments-ruby-sdk/models/subscription_affiliate_create'
require 'trustpayments-ruby-sdk/models/subscription_affiliate_deleted'
require 'trustpayments-ruby-sdk/models/subscription_affiliate_inactive'
require 'trustpayments-ruby-sdk/models/subscription_metric_active'
require 'trustpayments-ruby-sdk/models/subscription_metric_create'
require 'trustpayments-ruby-sdk/models/subscription_pending'
require 'trustpayments-ruby-sdk/models/subscription_product_active'
require 'trustpayments-ruby-sdk/models/subscription_product_create'
require 'trustpayments-ruby-sdk/models/subscription_suspension_running'
require 'trustpayments-ruby-sdk/models/token_create'
require 'trustpayments-ruby-sdk/models/token_update'
require 'trustpayments-ruby-sdk/models/transaction_comment_active'
require 'trustpayments-ruby-sdk/models/transaction_comment_create'
require 'trustpayments-ruby-sdk/models/transaction_completion'
require 'trustpayments-ruby-sdk/models/transaction_create'
require 'trustpayments-ruby-sdk/models/transaction_invoice'
require 'trustpayments-ruby-sdk/models/transaction_invoice_comment_active'
require 'trustpayments-ruby-sdk/models/transaction_invoice_comment_create'
require 'trustpayments-ruby-sdk/models/transaction_line_item_version'
require 'trustpayments-ruby-sdk/models/transaction_pending'
require 'trustpayments-ruby-sdk/models/transaction_void'
require 'trustpayments-ruby-sdk/models/webhook_listener_create'
require 'trustpayments-ruby-sdk/models/webhook_listener_update'
require 'trustpayments-ruby-sdk/models/webhook_url_create'
require 'trustpayments-ruby-sdk/models/webhook_url_update'
require 'trustpayments-ruby-sdk/models/application_user_create_with_mac_key'
require 'trustpayments-ruby-sdk/models/subscription_affiliate_deleting'

# APIs
require 'trustpayments-ruby-sdk/api/account_service_api'
require 'trustpayments-ruby-sdk/api/application_user_service_api'
require 'trustpayments-ruby-sdk/api/card_processing_service_api'
require 'trustpayments-ruby-sdk/api/charge_attempt_service_api'
require 'trustpayments-ruby-sdk/api/charge_flow_level_payment_link_service_api'
require 'trustpayments-ruby-sdk/api/charge_flow_level_service_api'
require 'trustpayments-ruby-sdk/api/charge_flow_service_api'
require 'trustpayments-ruby-sdk/api/condition_type_service_api'
require 'trustpayments-ruby-sdk/api/country_service_api'
require 'trustpayments-ruby-sdk/api/country_state_service_api'
require 'trustpayments-ruby-sdk/api/currency_service_api'
require 'trustpayments-ruby-sdk/api/customer_address_service_api'
require 'trustpayments-ruby-sdk/api/customer_comment_service_api'
require 'trustpayments-ruby-sdk/api/customer_service_api'
require 'trustpayments-ruby-sdk/api/delivery_indication_service_api'
require 'trustpayments-ruby-sdk/api/document_template_service_api'
require 'trustpayments-ruby-sdk/api/document_template_type_service_api'
require 'trustpayments-ruby-sdk/api/human_user_service_api'
require 'trustpayments-ruby-sdk/api/label_description_group_service_api'
require 'trustpayments-ruby-sdk/api/label_description_service_api'
require 'trustpayments-ruby-sdk/api/language_service_api'
require 'trustpayments-ruby-sdk/api/legal_organization_form_service_api'
require 'trustpayments-ruby-sdk/api/manual_task_service_api'
require 'trustpayments-ruby-sdk/api/payment_connector_configuration_service_api'
require 'trustpayments-ruby-sdk/api/payment_connector_service_api'
require 'trustpayments-ruby-sdk/api/payment_link_service_api'
require 'trustpayments-ruby-sdk/api/payment_method_brand_service_api'
require 'trustpayments-ruby-sdk/api/payment_method_configuration_service_api'
require 'trustpayments-ruby-sdk/api/payment_method_service_api'
require 'trustpayments-ruby-sdk/api/payment_processor_configuration_service_api'
require 'trustpayments-ruby-sdk/api/payment_processor_service_api'
require 'trustpayments-ruby-sdk/api/payment_terminal_service_api'
require 'trustpayments-ruby-sdk/api/payment_terminal_till_service_api'
require 'trustpayments-ruby-sdk/api/payment_terminal_transaction_summary_service_api'
require 'trustpayments-ruby-sdk/api/permission_service_api'
require 'trustpayments-ruby-sdk/api/refund_comment_service_api'
require 'trustpayments-ruby-sdk/api/refund_service_api'
require 'trustpayments-ruby-sdk/api/shopify_transaction_service_api'
require 'trustpayments-ruby-sdk/api/space_service_api'
require 'trustpayments-ruby-sdk/api/static_value_service_api'
require 'trustpayments-ruby-sdk/api/subscriber_service_api'
require 'trustpayments-ruby-sdk/api/subscription_affiliate_service_api'
require 'trustpayments-ruby-sdk/api/subscription_charge_service_api'
require 'trustpayments-ruby-sdk/api/subscription_ledger_entry_service_api'
require 'trustpayments-ruby-sdk/api/subscription_metric_service_api'
require 'trustpayments-ruby-sdk/api/subscription_metric_usage_service_api'
require 'trustpayments-ruby-sdk/api/subscription_period_bill_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_component_group_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_component_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_fee_tier_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_metered_fee_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_period_fee_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_retirement_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_setup_fee_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_version_retirement_service_api'
require 'trustpayments-ruby-sdk/api/subscription_product_version_service_api'
require 'trustpayments-ruby-sdk/api/subscription_service_api'
require 'trustpayments-ruby-sdk/api/subscription_suspension_service_api'
require 'trustpayments-ruby-sdk/api/subscription_version_service_api'
require 'trustpayments-ruby-sdk/api/token_service_api'
require 'trustpayments-ruby-sdk/api/token_version_service_api'
require 'trustpayments-ruby-sdk/api/transaction_comment_service_api'
require 'trustpayments-ruby-sdk/api/transaction_completion_service_api'
require 'trustpayments-ruby-sdk/api/transaction_iframe_service_api'
require 'trustpayments-ruby-sdk/api/transaction_invoice_comment_service_api'
require 'trustpayments-ruby-sdk/api/transaction_invoice_service_api'
require 'trustpayments-ruby-sdk/api/transaction_lightbox_service_api'
require 'trustpayments-ruby-sdk/api/transaction_line_item_version_service_api'
require 'trustpayments-ruby-sdk/api/transaction_mobile_sdk_service_api'
require 'trustpayments-ruby-sdk/api/transaction_payment_page_service_api'
require 'trustpayments-ruby-sdk/api/transaction_service_api'
require 'trustpayments-ruby-sdk/api/transaction_terminal_service_api'
require 'trustpayments-ruby-sdk/api/transaction_void_service_api'
require 'trustpayments-ruby-sdk/api/user_account_role_service_api'
require 'trustpayments-ruby-sdk/api/user_space_role_service_api'
require 'trustpayments-ruby-sdk/api/webhook_listener_service_api'
require 'trustpayments-ruby-sdk/api/webhook_url_service_api'

module TrustPayments
  class << self
    # Customize default settings for the SDK using block.
    #   TrustPayments.configure do |config|
    #     config.user_id = "xxx"
    #     config.authentication_key = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
