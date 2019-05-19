# frozen_string_literal: true

require 'digest'

module AttrHasher
  module Hashers
    # Base class for Hasher implementations
    class Base
      def hash(algorithm, value, options = {})
        salter = options[:salter]
        if salter.nil?
          algorithm.hexdigest(value)
        else
          algorithm.hexdigest(salter.call(value))
        end
      end
    end
  end
end
