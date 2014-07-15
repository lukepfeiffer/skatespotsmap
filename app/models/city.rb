class City
  def self.find(zip)
    response = Faraday.get('http://maps.googleapis.com/maps/api/geocode/json') do |request|
      request.params['address'] = zip
    end

    new(JSON.parse(response.body))
  end

  def initialize(city_hash)
    @city_hash = city_hash
  end

  def name
    @city_hash['results'].first['formatted_address']
  end
end
