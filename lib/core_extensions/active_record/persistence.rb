# module ActiveRecord
#   module Persistence
#     alias update_attributes update
#     alias update_attributes! update!
#   end
# end

module CoreExtensions
  module ActiveRecord
    module Persistence
      def update_attributes(attributes)
        with_transaction_returning_status do
          assign_attributes(attributes)
          save
        end
      end

      def update_attributes!(attributes)
        with_transaction_returning_status do
          assign_attributes(attributes)
          save!
        end
      end
    end
  end
end

ActiveRecord::Base.include CoreExtensions::ActiveRecord::Persistence
