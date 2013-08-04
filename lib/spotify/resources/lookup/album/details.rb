module Spotify
  module Resources
    module Lookup
      class AlbumDetails < Spotify::Resources::Lookup::AlbumBase

        def initialize(body)
          @body = body
        end

        def tracks
          @body['tracks'].map { |track| Spotify::Resources::Lookup::TrackBase.new(track) }
        end

      end
    end
  end
end
