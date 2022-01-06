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
  # Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The `body` contains the email content. If you want the original SMTP message see the `getRawEmail` endpoints. The attachments can be fetched using the AttachmentController
  class Email include JSON::Serializable
   include JSON::Serializable 
    # ID of the email entity
    @[JSON::Field(key: id, type: String)]
    property id : String


    # ID of user that email belongs to
    @[JSON::Field(key: userId, type: String)]
    property user_id : String


    # ID of the inbox that received the email
    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    # List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: to, type: Array(String))]
    property to : Array(String)


    # Who the email was sent from. An email address - see fromName for the sender name.
    @[JSON::Field(key: from, type: String)]
    property from : String


    @[JSON::Field(key: sender, type: Sender)]
    property sender : Sender


    @[JSON::Field(key: recipients, type: EmailRecipients)]
    property recipients : EmailRecipients


    # The `replyTo` field on the received email message
    @[JSON::Field(key: replyTo, type: String)]
    property reply_to : String


    # List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: cc, type: Array(String))]
    property cc : Array(String)


    # List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: bcc, type: Array(String))]
    property bcc : Array(String)


    # Collection of SMTP headers attached to email
    @[JSON::Field(key: headers, type: Hash(String, String))]
    property headers : Hash(String, String)


    # List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
    @[JSON::Field(key: attachments, type: Array(String))]
    property attachments : Array(String)


    # The subject line of the email message as specified by SMTP subject header
    @[JSON::Field(key: subject, type: String)]
    property subject : String


    # The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.
    @[JSON::Field(key: body, type: String)]
    property body : String


    # An excerpt of the body of the email message for quick preview .
    @[JSON::Field(key: bodyExcerpt, type: String)]
    property body_excerpt : String


    # A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.
    @[JSON::Field(key: bodyMD5Hash, type: String)]
    property body_md5_hash : String


    # Detected character set of the email body such as UTF-8
    @[JSON::Field(key: charset, type: String)]
    property charset : String


    @[JSON::Field(key: analysis, type: EmailAnalysis)]
    property analysis : EmailAnalysis


    # When was the email received by MailSlurp
    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    # When was the email last updated
    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time


    # Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
    @[JSON::Field(key: read, type: Bool)]
    property read : Bool


    # Can the email be accessed by organization team members
    @[JSON::Field(key: teamAccess, type: Bool)]
    property team_access : Bool


    @[JSON::Field(key: html, type: Bool)]
    property html : Bool

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@id : String | Nil, @user_id : String | Nil, @inbox_id : String | Nil, @to : Array(String) | Nil, @from : String | Nil, @sender : Sender | Nil, @recipients : EmailRecipients | Nil, @reply_to : String | Nil, @cc : Array(String) | Nil, @bcc : Array(String) | Nil, @headers : Hash(String, String) | Nil, @attachments : Array(String) | Nil, @subject : String | Nil, @body : String | Nil, @body_excerpt : String | Nil, @body_md5_hash : String | Nil, @charset : String | Nil, @analysis : EmailAnalysis | Nil, @created_at : Time | Nil, @updated_at : Time | Nil, @read : Bool | Nil, @team_access : Bool | Nil, @html : Bool | Nil)
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
          id == o.id &&
          user_id == o.user_id &&
          inbox_id == o.inbox_id &&
          to == o.to &&
          from == o.from &&
          sender == o.sender &&
          recipients == o.recipients &&
          reply_to == o.reply_to &&
          cc == o.cc &&
          bcc == o.bcc &&
          headers == o.headers &&
          attachments == o.attachments &&
          subject == o.subject &&
          body == o.body &&
          body_excerpt == o.body_excerpt &&
          body_md5_hash == o.body_md5_hash &&
          charset == o.charset &&
          analysis == o.analysis &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          read == o.read &&
          team_access == o.team_access &&
          html == o.html
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, inbox_id, to, from, sender, recipients, reply_to, cc, bcc, headers, attachments, subject, body, body_excerpt, body_md5_hash, charset, analysis, created_at, updated_at, read, team_access, html].hash
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
