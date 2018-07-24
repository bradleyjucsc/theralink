require 'thera/base'

module Thera
  class Appointment < Base
    def all(attrs={})
      response = get('/appointment', query: attrs)
      response.fetch('appointments', response)
    end

    def create(attrs={})
      response = post('/appointment', body: attrs.to_json)
      response.fetch('appointment', response)
    end
  end
end
