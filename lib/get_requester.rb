# Write your code here

require 'open-uri'
require 'net/http'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        return response.body
    end

    def parse_json
        return JSON.parse(self.get_response_body)
    end
end