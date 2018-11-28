# Include services
require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

# Superclass
class Postcodesio

def single_postcode_service
  SinglePostcodeService.new
end

def multiple_postcode_service
  MultiplePostcodesService.new
end


end
