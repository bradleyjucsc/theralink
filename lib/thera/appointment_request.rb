require 'thera/base'

module Thera
  class AppointmentRequest < Base
    def create(attrs={})
      response = post('/appointment-request', body: attrs.to_json)
      # response.fetch('appointment', response)
    end
  end
end
