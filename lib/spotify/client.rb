module Spotify

  class Client

    def initialize
    end

    def search
      Spotify::API::Search.new
    end

    def lookup
      Spotify::API::Lookup.new
    end

  end

end
