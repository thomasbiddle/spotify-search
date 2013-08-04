module Spotify
  module Resources
    module Search

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

        def popularity
          @body['popularity']
        end

      end
    end
  end
end
