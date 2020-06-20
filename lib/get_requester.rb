# Write your code here
class GetRequester
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    RestClient.get(self.url)
  end

  def parse_json
    json_array = JSON.parse(self.get_response_body)
  end
end