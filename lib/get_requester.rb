require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    # URL =  "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    def initialize(url)
        @url = url

    end

    def get_response_body
        uri = URI.parse(@url) #storing the URL in a class object and gaining some powerful methods, 
        response = Net::HTTP.get_response(uri)#sending a get response to the URL
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
        
    end
end