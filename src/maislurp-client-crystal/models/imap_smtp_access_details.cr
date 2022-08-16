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
  # Access details for inbox using SMTP or IMAP
  class ImapSmtpAccessDetails include JSON::Serializable
   include JSON::Serializable 
    # SMTP server host domain
    @[JSON::Field(key: smtpServerHost, type: String)]
    property smtp_server_host : String


    # SMTP server host port
    @[JSON::Field(key: smtpServerPort, type: Int32)]
    property smtp_server_port : Int32


    # SMTP username for login
    @[JSON::Field(key: smtpUsername, type: String)]
    property smtp_username : String


    # SMTP  for login
    @[JSON::Field(key: smtpPassword, type: String)]
    property smtp_password : String


    # IMAP server host domain
    @[JSON::Field(key: imapServerHost, type: String)]
    property imap_server_host : String


    # IMAP server host port
    @[JSON::Field(key: imapServerPort, type: Int32)]
    property imap_server_port : Int32


    # IMAP username for login
    @[JSON::Field(key: imapUsername, type: String)]
    property imap_username : String


    # IMAP password for login
    @[JSON::Field(key: imapPassword, type: String)]
    property imap_password : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@smtp_server_host : String, @smtp_server_port : Int32, @smtp_username : String, @smtp_password : String, @imap_server_host : String, @imap_server_port : Int32, @imap_username : String, @imap_password : String)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @smtp_server_host.nil?
        invalid_properties.push("invalid value for \"smtp_server_host\", smtp_server_host cannot be nil.")
      end

      if @smtp_server_port.nil?
        invalid_properties.push("invalid value for \"smtp_server_port\", smtp_server_port cannot be nil.")
      end

      if @smtp_username.nil?
        invalid_properties.push("invalid value for \"smtp_username\", smtp_username cannot be nil.")
      end

      if @smtp_password.nil?
        invalid_properties.push("invalid value for \"smtp_password\", smtp_password cannot be nil.")
      end

      if @imap_server_host.nil?
        invalid_properties.push("invalid value for \"imap_server_host\", imap_server_host cannot be nil.")
      end

      if @imap_server_port.nil?
        invalid_properties.push("invalid value for \"imap_server_port\", imap_server_port cannot be nil.")
      end

      if @imap_username.nil?
        invalid_properties.push("invalid value for \"imap_username\", imap_username cannot be nil.")
      end

      if @imap_password.nil?
        invalid_properties.push("invalid value for \"imap_password\", imap_password cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @smtp_server_host.nil?
      return false if @smtp_server_port.nil?
      return false if @smtp_username.nil?
      return false if @smtp_password.nil?
      return false if @imap_server_host.nil?
      return false if @imap_server_port.nil?
      return false if @imap_username.nil?
      return false if @imap_password.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          smtp_server_host == o.smtp_server_host &&
          smtp_server_port == o.smtp_server_port &&
          smtp_username == o.smtp_username &&
          smtp_password == o.smtp_password &&
          imap_server_host == o.imap_server_host &&
          imap_server_port == o.imap_server_port &&
          imap_username == o.imap_username &&
          imap_password == o.imap_password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [smtp_server_host, smtp_server_port, smtp_username, smtp_password, imap_server_host, imap_server_port, imap_username, imap_password].hash
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
