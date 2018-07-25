require 'thera/base'

module Thera
  class Provider < Base
    def all()
      response = get('/provider')
      response.fetch('provider', response)
    end
  end
end
