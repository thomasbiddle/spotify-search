module Spotify
  module Resources

    class Album

      def initialize(body)
        @body = body
      end

      def artist_id
        @body['artist_id']
      end

      def name
        @body['name']
      end

      def artist
        @body['artist']
      end

      def external_ids
        @body['external_ids']
      end

      def released
        @body['released']
      end

      def href
        @body['href']
      end

      def availability
        @body['availability']
      end

    end

  end
end
