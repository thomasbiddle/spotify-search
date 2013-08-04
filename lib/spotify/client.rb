require 'json'
require 'rest_client'

module Spotify

  class Client

    @@uri = "http://ws.spotify.com/search/1/"

    def initialize
    end

    def artists(query)
      results = search('artist', query)
      artists = results['artists'].map { |artist| Resources::Artist.new(artist) }
      Resources::Base.new(results['info'], artists)
    end

    def tracks(query)
      results = search('track', query)
      tracks  = results['tracks'].map { |track| Resources::Artist.new(track) }
      Resources::Base.new(results['info'], tracks)
    end

    def albums(query)
      results = search('album', query)
      albums  = results['albums'].map { |album| Resources::Artist.new(album) }
      Resources::Base.new(results['info'], albums)
    end


    private
    def search(type, query)
      request(type, :q => query)
    end

    def request(base, params = {})
      JSON.parse(RestClient.get("#{@@uri}#{base}.json", {:params => params}).body)
    end

  end

end
