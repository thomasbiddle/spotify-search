module Spotify
  module API
    class Base

      def initialize
        raise(NotImplementedError, "Abstract class not meant to be instantiated directly.")
      end

      protected
      def search(type, params)
        request(type, params)
      end

      def request(base, params = {})
        JSON.parse(RestClient.get("#{@uri}#{base}.json", {:params => params}).body)
      end

    end
  end
end
