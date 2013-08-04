require 'json'
require 'rest_client'

module Spotify
  module API
    class Lookup < Spotify::API::Base

      def initialize
        @uri = "http://ws.spotify.com/lookup/1/"
      end

      def artist(uri, level=nil)
        params  = level == nil ? {} : { :extras => 'albumdetail' }
        results = search(nil, params.merge(:uri => "spotify:artist:#{uri}"))

        case level
        when :detailed
          artist = Resources::Lookup::ArtistDetailed.new(results['artist'])
        else
          artist = Resources::Lookup::ArtistBase.new(results['artist'])
        end
        Resources::Base.new(results['info'], artist)
      end

      def album(uri, level=nil)
        params  = level == nil ? {} : { :extras => 'trackdetail' }
        results = search(nil, params.merge(:uri => "spotify:album:#{uri}"))

        case level
        when :detailed
          album = Resources::Lookup::AlbumDetailed.new(results['album'])
        else
          album = Resources::Lookup::AlbumBase.new(results['album'])
        end
        Resources::Base.new(results['info'], album)
      end

      def track(uri)
        results = search(nil, :uri => "spotify:track:#{uri}")
        track   = Resources::Lookup::TrackBase.new(results['track'])
        Resources::Base.new(results['info'], track)
      end

    end
  end
end
