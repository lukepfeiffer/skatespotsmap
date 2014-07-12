class City

  def self.find(zip)
    city = Faraday.get('http://maps.googleapis.com/maps/api/geocode/json') do |request|
      request.params = {
        'address' => zip
      }
    end.body

    new(JSON.parse(city))
  end

  def initialize(city_hash)
    @city_hash = city_hash
  end

  def name
    if @city.present?
      @city_hash['results'].first['formatted_address']
    end
  end
end
