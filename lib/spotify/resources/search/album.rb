module Spotify
  module Resources
    module Search

      class Album

        def initialize(body)
          @body = body
        end

        def name
          @body['name']
        end

        def popularity
          @body['popularity']
        end

        def external_ids
          @body['external-ids']
        end

        def href
          @body['href']
        end

        def artists
          # Has no popularity!
          @body['artists'].map { |a| Spotify::Resources::Search::Artist.new(a)}
        end

        def availability
          @body['availability']
        end

      end

    end
  end
end
