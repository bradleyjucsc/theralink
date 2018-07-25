require 'httparty'

module Thera
  class Base
    include HTTParty
    base_uri 'https://app.thera-link.com/api/v2'
    headers 'Accept': 'application/json', 'Content-Type': 'application/json'

    def initialize(token)
      self.class.headers Authorization: "Bearer #{token}"
    end

    private

      def get(path, attrs={})
        self.class.get(path, attrs)
      end

      def post(path, attrs={})
        self.class.post(path, attrs)
      end

      def patch(path, attrs={})
        self.class.patch(path, attrs)
      end

  end
end
