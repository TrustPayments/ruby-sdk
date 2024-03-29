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

require 'date'

module TrustPayments
  # 
  class PaymentTerminalTransactionSum
    # 
    attr_accessor :brand

    # 
    attr_accessor :dcc_tip_amount

    # 
    attr_accessor :dcc_transaction_amount

    # 
    attr_accessor :dcc_transaction_count

    # The ID is the primary key of the entity. The ID identifies the entity uniquely.
    attr_accessor :id

    # 
    attr_accessor :product

    # 
    attr_accessor :transaction_amount

    # 
    attr_accessor :transaction_count

    # 
    attr_accessor :transaction_currency

    # 
    attr_accessor :transaction_tip_amount

    # The version number indicates the version of the entity. The version is incremented whenever the entity is changed.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brand' => :'brand',
        :'dcc_tip_amount' => :'dccTipAmount',
        :'dcc_transaction_amount' => :'dccTransactionAmount',
        :'dcc_transaction_count' => :'dccTransactionCount',
        :'id' => :'id',
        :'product' => :'product',
        :'transaction_amount' => :'transactionAmount',
        :'transaction_count' => :'transactionCount',
        :'transaction_currency' => :'transactionCurrency',
        :'transaction_tip_amount' => :'transactionTipAmount',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'brand' => :'String',
        :'dcc_tip_amount' => :'Float',
        :'dcc_transaction_amount' => :'Float',
        :'dcc_transaction_count' => :'Integer',
        :'id' => :'Integer',
        :'product' => :'String',
        :'transaction_amount' => :'Float',
        :'transaction_count' => :'Integer',
        :'transaction_currency' => :'String',
        :'transaction_tip_amount' => :'Float',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.has_key?(:'dccTipAmount')
        self.dcc_tip_amount = attributes[:'dccTipAmount']
      end

      if attributes.has_key?(:'dccTransactionAmount')
        self.dcc_transaction_amount = attributes[:'dccTransactionAmount']
      end

      if attributes.has_key?(:'dccTransactionCount')
        self.dcc_transaction_count = attributes[:'dccTransactionCount']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'transactionAmount')
        self.transaction_amount = attributes[:'transactionAmount']
      end

      if attributes.has_key?(:'transactionCount')
        self.transaction_count = attributes[:'transactionCount']
      end

      if attributes.has_key?(:'transactionCurrency')
        self.transaction_currency = attributes[:'transactionCurrency']
      end

      if attributes.has_key?(:'transactionTipAmount')
        self.transaction_tip_amount = attributes[:'transactionTipAmount']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          brand == o.brand &&
          dcc_tip_amount == o.dcc_tip_amount &&
          dcc_transaction_amount == o.dcc_transaction_amount &&
          dcc_transaction_count == o.dcc_transaction_count &&
          id == o.id &&
          product == o.product &&
          transaction_amount == o.transaction_amount &&
          transaction_count == o.transaction_count &&
          transaction_currency == o.transaction_currency &&
          transaction_tip_amount == o.transaction_tip_amount &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [brand, dcc_tip_amount, dcc_transaction_amount, dcc_transaction_count, id, product, transaction_amount, transaction_count, transaction_currency, transaction_tip_amount, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = TrustPayments.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
