require 'httparty'
require 'json'


class MultiplePostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_multiple_postcode(postcodes_array)

    @multiple_postcode_data = JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array}).body)

  end

  def get_status_code
    @multiple_postcode_data['status']
  end

  def get_results(test)
    @multiple_postcode_data['result'][test]
  end

end
