require 'httparty'

module Thera
  class Base
    include HTTParty
    base_uri 'https://app.thera-link.com/api/v2'
    headers 'Accept': 'application/json', 'Content-Type': 'application/json'

    attr_reader :errors

    def initialize(token)
      @errors = {}
      self.class.headers Authorization: "Bearer #{token}"
    end

    private

      def get(path, attrs={})
        self.class.get(path, attrs)
      end

      def post(path, attrs={})
        response = self.class.post(path, attrs)
        @errors = response.fetch('errors', {})
        response
      end

      def patch(path, attrs={})
        response = self.class.patch(path, attrs)
        @errors = response.fetch('errors', {})
        response
      end

  end
end
