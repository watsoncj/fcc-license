module FCC

  class License
    include HTTParty

    base_uri 'http://data.fcc.gov/api/license-view/basicSearch/getLicenses'

    def search(term)
      self.class.get "?searchValue=#{term}&format=json"
    end
  end

end
