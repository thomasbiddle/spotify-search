module Spotify
  module Resources

    class Track

      def initialize(body)
        @body = body
      end

      def available
        @body['available']
      end

      def album
        @body['album']
      end

      def name
        @body['name']
      end

      def popularity
        @body['popularity']
      end

      def external_ids
        @body['external_ids']
      end

      def length
        @body['length']
      end

      def href
        @body['href']
      end

      def artists
        @body['artists']
      end

      def availability
        @body['availability']
      end

      def trac_number
        @body['trac_number']
      end

    end

  end
end
