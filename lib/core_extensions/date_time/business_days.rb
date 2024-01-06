module CoreExtensions
  module DateTime
    module BusinessDays
      def weekend?
        sunday? || saturday?
      end
    end
  end
end

DateTime.include CoreExtensions::DateTime::BusinessDays
