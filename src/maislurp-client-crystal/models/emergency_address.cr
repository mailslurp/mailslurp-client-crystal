# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  class EmergencyAddress include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: id, type: String)]
    property id : String


    @[JSON::Field(key: sid, type: String)]
    property sid : String


    @[JSON::Field(key: userId, type: String)]
    property user_id : String


    @[JSON::Field(key: displayName, type: String)]
    property display_name : String


    @[JSON::Field(key: customerName, type: String)]
    property customer_name : String


    @[JSON::Field(key: address1, type: String)]
    property address1 : String


    @[JSON::Field(key: city, type: String)]
    property city : String


    @[JSON::Field(key: region, type: String)]
    property region : String


    @[JSON::Field(key: postalCode, type: String)]
    property postal_code : String


    @[JSON::Field(key: phoneCountry, type: String)]
    property phone_country : String


    @[JSON::Field(key: accountSid, type: String)]
    property account_sid : String


    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@id : String | Nil, @sid : String, @user_id : String, @display_name : String, @customer_name : String, @address1 : String, @city : String, @region : String, @postal_code : String, @phone_country : String, @account_sid : String, @created_at : Time, @updated_at : Time)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sid.nil?
        invalid_properties.push("invalid value for \"sid\", sid cannot be nil.")
      end

      if @user_id.nil?
        invalid_properties.push("invalid value for \"user_id\", user_id cannot be nil.")
      end

      if @display_name.nil?
        invalid_properties.push("invalid value for \"display_name\", display_name cannot be nil.")
      end

      if @customer_name.nil?
        invalid_properties.push("invalid value for \"customer_name\", customer_name cannot be nil.")
      end

      if @address1.nil?
        invalid_properties.push("invalid value for \"address1\", address1 cannot be nil.")
      end

      if @city.nil?
        invalid_properties.push("invalid value for \"city\", city cannot be nil.")
      end

      if @region.nil?
        invalid_properties.push("invalid value for \"region\", region cannot be nil.")
      end

      if @postal_code.nil?
        invalid_properties.push("invalid value for \"postal_code\", postal_code cannot be nil.")
      end

      if @phone_country.nil?
        invalid_properties.push("invalid value for \"phone_country\", phone_country cannot be nil.")
      end

      if @account_sid.nil?
        invalid_properties.push("invalid value for \"account_sid\", account_sid cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @updated_at.nil?
        invalid_properties.push("invalid value for \"updated_at\", updated_at cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sid.nil?
      return false if @user_id.nil?
      return false if @display_name.nil?
      return false if @customer_name.nil?
      return false if @address1.nil?
      return false if @city.nil?
      return false if @region.nil?
      return false if @postal_code.nil?
      return false if @phone_country.nil?
      phone_country_validator = EnumAttributeValidator.new("String", ["US", "GB"])
      return false unless phone_country_validator.valid?(@phone_country)
      return false if @account_sid.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_country Object to be assigned
    def phone_country=(phone_country)
      validator = EnumAttributeValidator.new("String", ["US", "GB"])
      unless validator.valid?(phone_country)
        raise ArgumentError.new("invalid value for \"phone_country\", must be one of #{validator.allowable_values}.")
      end
      @phone_country = phone_country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sid == o.sid &&
          user_id == o.user_id &&
          display_name == o.display_name &&
          customer_name == o.customer_name &&
          address1 == o.address1 &&
          city == o.city &&
          region == o.region &&
          postal_code == o.postal_code &&
          phone_country == o.phone_country &&
          account_sid == o.account_sid &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, sid, user_id, display_name, customer_name, address1, city, region, postal_code, phone_country, account_sid, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        ({} of Symbol => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = .const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
      hash = {} of Symbol => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of Symbol => String).tap do |hash|
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
