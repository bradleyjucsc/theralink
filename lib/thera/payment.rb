require 'thera/base'

module Thera
  class Payment < Base
    def create(attrs={})
      response = post('/payment', body: attrs.to_json)
      # response.fetch('payment', response)
    end
  end
end
