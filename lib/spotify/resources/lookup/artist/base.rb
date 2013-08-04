module Spotify
  module Resources
    module Lookup
      class ArtistBase

        def initialize(body)
          @body = body
        end

        def href
          @body['href']
        end

        def name
          @body['name']
        end

      end
    end
  end
end
