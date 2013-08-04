module Spotify
  module Resources

    class Artist

      def initialize(body)
        @body = body
      end

      def href
        @body['href']
      end

      def name
        @body['name']
      end

      def albums
        @body['albums']
      end

    end
  end
end
