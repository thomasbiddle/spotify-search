module Spotify
  module Resources
    module Lookup
      class AlbumBase

        def initialize(body)
          @body = body
        end

        def artist_id
          @body['artist-id']
        end

        def name
          @body['name']
        end

        def artist
          @body['artist']
        end

        def external_ids
          @body['external-ids']
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
end
