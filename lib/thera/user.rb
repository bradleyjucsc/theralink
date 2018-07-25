require 'thera/base'

module Thera
  class User < Base
    def all(attrs={})
      response = get('/user', query: attrs)
      response.fetch('users', response)
    end

    def find(id, attrs={})
      response = get("/user/#{id}", query: attrs)
      response.fetch('user', response)
    end

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
