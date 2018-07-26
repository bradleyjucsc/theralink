require 'thera/base'

module Thera
  class AppointmentRequest < Base
    def all()
      response = get('/appointment-request')
      response.fetch('appointment_requests', [])
    end

    def find(id, attrs={})
      response = get("/appointment-request/#{id}", query: attrs)
      response.fetch('appointment_request', nil)
    end

    def create(attrs={})
      response = post('/appointment-request', body: attrs.to_json)
      response.fetch('appointment_request', response)
    end
  end
end
