require 'thera/base'

module Thera
  class User < Base
    def create(attrs={})
      response = post('/user', body: attrs.to_json)
      response.fetch('invitation', response)
    end

    def lookup(term)
      response = get("/user-lookup/#{term}")
      response.fetch('id', response)
    end
  end
end
