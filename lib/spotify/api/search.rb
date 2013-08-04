require 'json'
require 'rest_client'

module Spotify
  module API
    class Search < Spotify::API::Base

      def initialize
        @uri = "http://ws.spotify.com/search/1/"
      end

      def artists(query, params = {})
        results = search('artist', params.merge(:q => query))
        artists = results['artists'].map { |artist| Resources::Search::Artist.new(artist) }
        Resources::Base.new(results['info'], artists)
      end

      def tracks(query, params = {})
        results = search('track', params.merge(:q => query))
        tracks  = results['tracks'].map { |track| Resources::Search::Track.new(track) }
        Resources::Base.new(results['info'], tracks)
      end

      def albums(query, params = {})
        results = search('album', params.merge(:q => query))
        albums  = results['albums'].map { |album| Resources::Search::Album.new(album) }
        Resources::Base.new(results['info'], albums)
      end

    end
  end
end
