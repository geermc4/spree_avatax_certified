require 'spree/core'

module Spree
  module Avalara

    class Settings < Spree::Preferences::Configuration

      preference :avatax_api_username, :string
      preference :avatax_api_password, :string
      preference :avatax_customer_code, :string
      preference :avatax_company_code, :string
      preference :avatax_endpoint, :string
      preference :avatax_account, :string
      preference :avatax_servicepathtax, :string, default: '/1.0/tax/'
      preference :avatax_servicepathaddress, :string, default: '/1.0/address/'
      preference :avatax_license_key, :string
      preference :avatax_iseligible, :boolean, default: true
      preference :avatax_client_version, :string, default: 'SpreeExtV1.0'
      preference :avatax_business_address1, :string
      preference :avatax_business_address2, :string
      preference :avatax_business_address_city, :string
      preference :avatax_business_address_zip, :string
      preference :avatax_business_region, :string
      preference :avatax_business_zip5, :string
      preference :avatax_business_zip4, :string
      preference :avatax_business_country, :string

    end
  end
end