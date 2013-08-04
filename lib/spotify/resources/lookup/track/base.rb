module Spotify
  module Resources
    module Lookup
      class TrackBase

        # http://ws.spotify.com/lookup/1/.json?uri=spotify:track:6NmXV4o6bmp704aPGyTVVG
        # and
        # http://ws.spotify.com/lookup/1/.json?uri=spotify:album:6G9fHYDCoyEErUkHrFYfs4&extras=trackdetail
        #
        # do not returning the same 'track' object - We're leaving out 'disc-number', 'available', and
        # 'availability.'
        #
        # TODO - Redefine the architecture where the correct values can be returned.

        def initialize(body)
          @body = body
        end

        def track_number
          @body['track-number']
        end

        def popularity
          @body['popularity']
        end

        def external_ids
          @body['external-ids']
        end

        def length
          @body['length']
        end

        def href
          @body['href']
        end

        def artists
          @body['artists'].map { |artist| Spotify::Resources::Lookup::ArtistBase.new(artist) }
        end

        def name
          @body['name']
        end

      end
    end
  end
end
