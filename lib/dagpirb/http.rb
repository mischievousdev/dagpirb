require "dagpirb/version"
require "json"
require "http"

##
# Base Custom Exception class.
class APIError < StandardError
  attr_reader :object
  def initialize(message, object)
    super(message)
    @object = object
  end
end

module Dagpi
  ##
  # Custom HTTP Client
  class HTTPClient
    attr_reader :token
    def initialize(token)
      @token = token
    end

    ##
    # Method to get data from Data API endpoints.
    # Returns: Hash
    def get_data(endpoint)
      http = HTTP
        .headers("User-Agent" => "dagpi.rb v#{VERSION}", "Authorization" => @token)
      req = http.get("https://api.dagpi.xyz/data/#{endpoint}")
      if req.code == 200
        JSON.parse(req.body)
      else
        parsed = JSON.parse(req.body)
        raise APIError.new(parsed["message"], req.code)
      end
    end

    ##
    # Method to get image from Image API endpoints
    # Returns: bytes
    def get_image(endpoint, param)
      http = HTTP
        .headers("User-Agent" => "dagpi.rb v#{VERSION}", "Authorization" => @token)
      req = http.get("https://api.dagpi.xyz/image/#{endpoint}/?url=#{param}")
      if req.code == 200
        req.body
      else
        parsed = JSON.parse(req.body)
        raise APIError.new(parsed["message"], req.code)
      end
    end
  end
end