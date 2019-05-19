# frozen_string_literal: true

require 'digest'

module AttrHasher
  module Hashers
    # Base class for Hasher implementations
    class Base
      def hash(algorithm, value)
        algorithm.hexdigest(value)
      end
    end
  end
end
