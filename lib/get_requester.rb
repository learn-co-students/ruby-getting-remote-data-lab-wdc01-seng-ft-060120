# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    def initialize(url)
        @url = URL
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        examples = JSON.parse(self.get_response_body)
        examples.collect do |example|
        example  
        end
    end

end
