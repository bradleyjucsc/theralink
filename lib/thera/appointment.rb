require 'thera/base'

module Thera
  class Appointment < Base
    def all(attrs={})
      response = get('/appointment', query: attrs)
      response.fetch('appointments', [])
    end

    def find(id, attrs={})
      response = get("/appointment/#{id}", query: attrs)
      response.fetch('appointment', nil)
    end

    def create(attrs={})
      response = post('/appointment', body: attrs.to_json)
      response.fetch('appointment', response)
    end
  end
end
