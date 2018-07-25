require 'thera/base'

module Thera
  class Payment < Base
    def all(attrs={})
      response = get('/payment', query: attrs)
      response.fetch('payments', response)
    end

    def find(id, attrs={})
      response = get("/payment/#{id}", query: attrs)
      response.fetch('payment', response)
    end

    def create(attrs={})
      response = post('/payment', body: attrs.to_json)
      response.fetch('payment', response)
    end
  end
end
