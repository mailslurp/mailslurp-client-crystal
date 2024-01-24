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
  class GenerateDmarcRecordOptions include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: domain, type: String)]
    property domain : String


    @[JSON::Field(key: version, type: String)]
    property version : String


    @[JSON::Field(key: policy, type: String)]
    property policy : String


    @[JSON::Field(key: subdomainPolicy, type: String)]
    property subdomain_policy : String


    @[JSON::Field(key: reportEmailAddress, type: Array(String))]
    property report_email_address : Array(String)


    @[JSON::Field(key: forensicEmailAddress, type: Array(String))]
    property forensic_email_address : Array(String)


    @[JSON::Field(key: percentage, type: Int32)]
    property percentage : Int32


    @[JSON::Field(key: reportFormat, type: String)]
    property report_format : String


    @[JSON::Field(key: secondsBetweenReports, type: Int32)]
    property seconds_between_reports : Int32


    @[JSON::Field(key: adkim, type: String)]
    property adkim : String


    @[JSON::Field(key: aspf, type: String)]
    property aspf : String


    @[JSON::Field(key: fo, type: String)]
    property fo : String

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
    def initialize(@domain : String, @version : String, @policy : String, @subdomain_policy : String | Nil, @report_email_address : Array(String) | Nil, @forensic_email_address : Array(String) | Nil, @percentage : Int32 | Nil, @report_format : String | Nil, @seconds_between_reports : Int32 | Nil, @adkim : String | Nil, @aspf : String | Nil, @fo : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @domain.nil?
        invalid_properties.push("invalid value for \"domain\", domain cannot be nil.")
      end

      if @version.nil?
        invalid_properties.push("invalid value for \"version\", version cannot be nil.")
      end

      if @policy.nil?
        invalid_properties.push("invalid value for \"policy\", policy cannot be nil.")
      end

      if !@percentage.nil? && @percentage > 100
        invalid_properties.push("invalid value for \"percentage\", must be smaller than or equal to 100.")
      end

      if !@percentage.nil? && @percentage < 1
        invalid_properties.push("invalid value for \"percentage\", must be greater than or equal to 1.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @domain.nil?
      return false if @version.nil?
      version_validator = EnumAttributeValidator.new("String", ["DMARC1"])
      return false unless version_validator.valid?(@version)
      return false if @policy.nil?
      policy_validator = EnumAttributeValidator.new("String", ["NONE", "QUARANTINE", "REJECT"])
      return false unless policy_validator.valid?(@policy)
      subdomain_policy_validator = EnumAttributeValidator.new("String", ["NONE", "QUARANTINE", "REJECT"])
      return false unless subdomain_policy_validator.valid?(@subdomain_policy)
      return false if !@percentage.nil? && @percentage > 100
      return false if !@percentage.nil? && @percentage < 1
      report_format_validator = EnumAttributeValidator.new("String", ["AFRF"])
      return false unless report_format_validator.valid?(@report_format)
      adkim_validator = EnumAttributeValidator.new("String", ["STRICT", "RELAXED"])
      return false unless adkim_validator.valid?(@adkim)
      aspf_validator = EnumAttributeValidator.new("String", ["STRICT", "RELAXED"])
      return false unless aspf_validator.valid?(@aspf)
      fo_validator = EnumAttributeValidator.new("String", ["FO_0", "FO_1", "FO_D", "FO_S"])
      return false unless fo_validator.valid?(@fo)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] version Object to be assigned
    def version=(version)
      validator = EnumAttributeValidator.new("String", ["DMARC1"])
      unless validator.valid?(version)
        raise ArgumentError.new("invalid value for \"version\", must be one of #{validator.allowable_values}.")
      end
      @version = version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] policy Object to be assigned
    def policy=(policy)
      validator = EnumAttributeValidator.new("String", ["NONE", "QUARANTINE", "REJECT"])
      unless validator.valid?(policy)
        raise ArgumentError.new("invalid value for \"policy\", must be one of #{validator.allowable_values}.")
      end
      @policy = policy
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subdomain_policy Object to be assigned
    def subdomain_policy=(subdomain_policy)
      validator = EnumAttributeValidator.new("String", ["NONE", "QUARANTINE", "REJECT"])
      unless validator.valid?(subdomain_policy)
        raise ArgumentError.new("invalid value for \"subdomain_policy\", must be one of #{validator.allowable_values}.")
      end
      @subdomain_policy = subdomain_policy
    end

    # Custom attribute writer method with validation
    # @param [Object] percentage Value to be assigned
    def percentage=(percentage)
      if !percentage.nil? && percentage > 100
        raise ArgumentError.new("invalid value for \"percentage\", must be smaller than or equal to 100.")
      end

      if !percentage.nil? && percentage < 1
        raise ArgumentError.new("invalid value for \"percentage\", must be greater than or equal to 1.")
      end

      @percentage = percentage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_format Object to be assigned
    def report_format=(report_format)
      validator = EnumAttributeValidator.new("String", ["AFRF"])
      unless validator.valid?(report_format)
        raise ArgumentError.new("invalid value for \"report_format\", must be one of #{validator.allowable_values}.")
      end
      @report_format = report_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] adkim Object to be assigned
    def adkim=(adkim)
      validator = EnumAttributeValidator.new("String", ["STRICT", "RELAXED"])
      unless validator.valid?(adkim)
        raise ArgumentError.new("invalid value for \"adkim\", must be one of #{validator.allowable_values}.")
      end
      @adkim = adkim
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aspf Object to be assigned
    def aspf=(aspf)
      validator = EnumAttributeValidator.new("String", ["STRICT", "RELAXED"])
      unless validator.valid?(aspf)
        raise ArgumentError.new("invalid value for \"aspf\", must be one of #{validator.allowable_values}.")
      end
      @aspf = aspf
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fo Object to be assigned
    def fo=(fo)
      validator = EnumAttributeValidator.new("String", ["FO_0", "FO_1", "FO_D", "FO_S"])
      unless validator.valid?(fo)
        raise ArgumentError.new("invalid value for \"fo\", must be one of #{validator.allowable_values}.")
      end
      @fo = fo
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          domain == o.domain &&
          version == o.version &&
          policy == o.policy &&
          subdomain_policy == o.subdomain_policy &&
          report_email_address == o.report_email_address &&
          forensic_email_address == o.forensic_email_address &&
          percentage == o.percentage &&
          report_format == o.report_format &&
          seconds_between_reports == o.seconds_between_reports &&
          adkim == o.adkim &&
          aspf == o.aspf &&
          fo == o.fo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [domain, version, policy, subdomain_policy, report_email_address, forensic_email_address, percentage, report_format, seconds_between_reports, adkim, aspf, fo].hash
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