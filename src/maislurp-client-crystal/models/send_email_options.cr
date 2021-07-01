# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  # Options for sending an email message from an inbox. You must provide one of: `to`, `toGroup`, or `toContacts` to send an email. All other parameters are optional. 
  class SendEmailOptions include JSON::Serializable
   include JSON::Serializable 
    # Add tracking pixel to email
    @[JSON::Field(key: addTrackingPixel, type: Bool)]
    property add_tracking_pixel : Bool


    # Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support `multi-part form`, `base64 file encoding`, and octet stream binary uploads. See the `UploadController` for available methods. 
    @[JSON::Field(key: attachments, type: Array(String))]
    property attachments : Array(String)


    # Optional list of bcc destination email addresses
    @[JSON::Field(key: bcc, type: Array(String))]
    property bcc : Array(String)


    # Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
    @[JSON::Field(key: body, type: String)]
    property body : String


    # Optional list of cc destination email addresses
    @[JSON::Field(key: cc, type: Array(String))]
    property cc : Array(String)


    # Optional charset
    @[JSON::Field(key: charset, type: String)]
    property charset : String


    # Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. If you set `useInboxName` to `true` the from field will include the inbox name as a display name: `inbox_name <inbox@address.com>`. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used.
    @[JSON::Field(key: from, type: String)]
    property from : String


    # Optional HTML flag to indicate that contents is HTML. Set's a `content-type: text/html` for email. (Deprecated: use `isHTML` instead.)
    @[JSON::Field(key: html, type: Bool)]
    property html : Bool


    # Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
    @[JSON::Field(key: isHTML, type: Bool)]
    property is_html : Bool


    # Optional replyTo header
    @[JSON::Field(key: replyTo, type: String)]
    property reply_to : String


    # Optional strategy to use when sending the email
    @[JSON::Field(key: sendStrategy, type: String)]
    property send_strategy : String


    # Optional email subject line
    @[JSON::Field(key: subject, type: String)]
    property subject : String


    # Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
    @[JSON::Field(key: template, type: String)]
    property template : String


    # Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
    @[JSON::Field(key: templateVariables, type: Object)]
    property template_variables : Object


    # List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing.
    @[JSON::Field(key: to, type: Array(String))]
    property to : Array(String)


    # Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
    @[JSON::Field(key: toContacts, type: Array(String))]
    property to_contacts : Array(String)


    # Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
    @[JSON::Field(key: toGroup, type: String)]
    property to_group : String


    # Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>` if the inbox has a name.
    @[JSON::Field(key: useInboxName, type: Bool)]
    property use_inbox_name : Bool

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
    def initialize(@add_tracking_pixel : Bool | Nil, @attachments : Array(String) | Nil, @bcc : Array(String) | Nil, @body : String | Nil, @cc : Array(String) | Nil, @charset : String | Nil, @from : String | Nil, @html : Bool | Nil, @is_html : Bool | Nil, @reply_to : String | Nil, @send_strategy : String | Nil, @subject : String | Nil, @template : String | Nil, @template_variables : Object | Nil, @to : Array(String) | Nil, @to_contacts : Array(String) | Nil, @to_group : String | Nil, @use_inbox_name : Bool | Nil)
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
      send_strategy_validator = EnumAttributeValidator.new("String", ["SINGLE_MESSAGE"])
      return false unless send_strategy_validator.valid?(@send_strategy)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] send_strategy Object to be assigned
    def send_strategy=(send_strategy)
      validator = EnumAttributeValidator.new("String", ["SINGLE_MESSAGE"])
      unless validator.valid?(send_strategy)
        raise ArgumentError.new("invalid value for \"send_strategy\", must be one of #{validator.allowable_values}.")
      end
      @send_strategy = send_strategy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          add_tracking_pixel == o.add_tracking_pixel &&
          attachments == o.attachments &&
          bcc == o.bcc &&
          body == o.body &&
          cc == o.cc &&
          charset == o.charset &&
          from == o.from &&
          html == o.html &&
          is_html == o.is_html &&
          reply_to == o.reply_to &&
          send_strategy == o.send_strategy &&
          subject == o.subject &&
          template == o.template &&
          template_variables == o.template_variables &&
          to == o.to &&
          to_contacts == o.to_contacts &&
          to_group == o.to_group &&
          use_inbox_name == o.use_inbox_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [add_tracking_pixel, attachments, bcc, body, cc, charset, from, html, is_html, reply_to, send_strategy, subject, template, template_variables, to, to_contacts, to_group, use_inbox_name].hash
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
