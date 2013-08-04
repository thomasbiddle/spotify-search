module Spotify
  module Resources

    class Info

      attr_reader :num_results, :limit, :offset, :query, :type, :page

      def initialize(info)
        @info = info
      end

      def num_results
        @info['num_results']
      end

      def limit
        @info['limit']
      end

      def offset
        @info['offset']
      end

      def query
        @info['query']
      end

      def type
        @info['type']
      end

      def page
        @info['page']
      end

    end

  end
end
