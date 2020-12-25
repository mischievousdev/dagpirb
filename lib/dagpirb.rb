require "dagpirb/http"
require "dagpirb/version"

module Dagpi
  class Client
    attr_reader :token, :__version__
    def initialize(token)
      @token = token
      @client = Dagpi::HTTPClient.new @token
      @__version__ = VERSION
    end

    ##
    # Request data from Data API
    # @param {String} endpoint: The endpoint to request with
    # @return {Hash}
    def get_data(endpoint)
      @client.get_data(endpoint)
    end

    ##
    # Request image data from Image API
    # @param {String} endpoint: The endpoint to request with
    # @param {String} url: The image url to manipulate
    # @return {bytes}
    def get_image(endpoint, url)
      @client.get_image(endpoint, url)
    end
  end
end