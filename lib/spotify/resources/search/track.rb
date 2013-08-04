module Spotify
  module Resources
    module Search

      class Track

        def initialize(body)
          @body = body
        end

        def album
          # Might want to default to lookup here.
          # No released
          Spotify::Resources::Search::Album.new(@body['album'])
        end

        def name
          @body['name']
        end

        def popularity
          @body['popularity']
        end

        def external_ids
          # External ID resource?
          @body['external-ids']
        end

        def length
          @body['length']
        end

        def href
          @body['href']
        end

        def artists
          # Has href and name?
          @body['artists'].map { |a| Spotify::Resources::Search::Artist.new(a)}
        end

        def trac_number
          @body['trac-number']
        end

      end

    end
  end
end
