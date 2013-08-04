module Spotify
  module Resources
    module Lookup
      class ArtistDetailed < Spotify::Resources::Lookup::ArtistBase

        def initialize(body)
          @body = body
        end

        def albums
          @body['albums'].map { |album| Spotify::Resources::Lookup::AlbumBase.new(album['album']) }
        end

      end
    end
  end
end
