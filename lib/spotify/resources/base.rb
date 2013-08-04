module Spotify
  module Resources

    class Base

      attr_reader :info, :results

      def initialize(info, results)
        @info    = Spotify::Resources::Info.new(info)
        @results = results
      end

    end

  end
end
