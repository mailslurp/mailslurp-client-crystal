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
  # A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties.
  class EmailProjection include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: id, type: String)]
    property id : String


    @[JSON::Field(key: from, type: String)]
    property from : String


    @[JSON::Field(key: subject, type: String)]
    property subject : String


    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    @[JSON::Field(key: attachments, type: Array(String))]
    property attachments : Array(String)


    @[JSON::Field(key: to, type: Array(String))]
    property to : Array(String)


    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: bcc, type: Array(String))]
    property bcc : Array(String)


    @[JSON::Field(key: cc, type: Array(String))]
    property cc : Array(String)


    @[JSON::Field(key: domainId, type: String)]
    property domain_id : String


    @[JSON::Field(key: teamAccess, type: Bool)]
    property team_access : Bool


    @[JSON::Field(key: read, type: Bool)]
    property read : Bool


    @[JSON::Field(key: bodyMD5Hash, type: String)]
    property body_md5_hash : String


    @[JSON::Field(key: bodyExcerpt, type: String)]
    property body_excerpt : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@id : String, @from : String | Nil, @subject : String | Nil, @inbox_id : String, @attachments : Array(String) | Nil, @to : Array(String), @created_at : Time, @bcc : Array(String) | Nil, @cc : Array(String) | Nil, @domain_id : String | Nil, @team_access : Bool, @read : Bool, @body_md5_hash : String | Nil, @body_excerpt : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for \"id\", id cannot be nil.")
      end

      if @inbox_id.nil?
        invalid_properties.push("invalid value for \"inbox_id\", inbox_id cannot be nil.")
      end

      if @to.nil?
        invalid_properties.push("invalid value for \"to\", to cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @team_access.nil?
        invalid_properties.push("invalid value for \"team_access\", team_access cannot be nil.")
      end

      if @read.nil?
        invalid_properties.push("invalid value for \"read\", read cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @inbox_id.nil?
      return false if @to.nil?
      return false if @created_at.nil?
      return false if @team_access.nil?
      return false if @read.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          from == o.from &&
          subject == o.subject &&
          inbox_id == o.inbox_id &&
          attachments == o.attachments &&
          to == o.to &&
          created_at == o.created_at &&
          bcc == o.bcc &&
          cc == o.cc &&
          domain_id == o.domain_id &&
          team_access == o.team_access &&
          read == o.read &&
          body_md5_hash == o.body_md5_hash &&
          body_excerpt == o.body_excerpt
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, from, subject, inbox_id, attachments, to, created_at, bcc, cc, domain_id, team_access, read, body_md5_hash, body_excerpt].hash
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
