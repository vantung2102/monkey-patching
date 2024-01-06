module CoreExtensions
  module Integer
    module Parse
      def to_s
        "_#{super}_"
      end
    end
  end
end

Integer.include CoreExtensions::Integer::Parse
