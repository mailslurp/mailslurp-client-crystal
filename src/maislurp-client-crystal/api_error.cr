# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

module 
  class ApiError < Exception
    getter code : Int32?
    getter response_headers : Hash(String, Array(String) | String)?

    # Usage examples:
    #   ApiError.new
    #   ApiError.new(message: "message")
    #   ApiError.new(code: 500, response_headers: {}, message: "")
    #   ApiError.new(code: 404, message: "Not Found")
    def initialize(@code , @message, @response_headers)
    end

    def initialize(@code , @message)
    end

    # Override to_s to display a friendly error message
    def to_s
      msg = ""
      msg = msg + "\nHTTP status code: #{code}" if @code
      msg = msg + "\nResponse headers: #{response_headers}" if @response_headers
      if @message.nil? || @message.empty?
        msg = msg + "\nError message: the server returns an error but the HTTP respone body is empty."
      else
        msg = msg + "\nResponse body: #{@message}"
      end

      msg
    end
  end
end
