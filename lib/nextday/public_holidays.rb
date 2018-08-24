module Nextday
  class PublicHolidays
    attr_reader :raw_data

    BASE_URL = 'https://www.gov.uk/bank-holidays.json'
    DEFAULT_DIVISION = 'england-and-wales'

    def initialize
      @raw_data = ::JSON.parse(::URI.parse(BASE_URL).read)
    rescue OpenURI::HTTPError, JSON::ParserError
      raise Nextday::Error, 'Unable to load any public holidays.'
    end

    def fetch
      @data ||= parse(DEFAULT_DIVISION)
    end

    private
    def parse(division)
      div = @raw_data[division]
      raise Error, "Unable to find division #{division}" unless div
      raise Error, "Unable to find events for division #{division}" unless div['events']

      div['events'].map { |e|
        Holiday.new(e['title'], Date.parse(e['date']))
      }
    end
  end
end
