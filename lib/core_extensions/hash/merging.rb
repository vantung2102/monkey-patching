module CoreExtensions
  module Hash
    module Merging
      def string_merge(other_hash, separator = ' ')
        merge(other_hash) { |_key, old, new| old.to_s + separator + new.to_s }
      end
    end
  end
end

Hash.prepend CoreExtensions::Hash::Merging
# {class: 'btn'}.string_merge({class: 'btn-danger'})
