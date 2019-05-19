# frozen_string_literal: true

require 'digest'

module AttrHasher
  module Hashers
    # Base class for Hasher implementations
    class Base
      def initialize(options = {})
        @options = options
      end

      def hash(algorithm, value, options = {})
        preprocessor = options[:preprocessor]
        if preprocessor.nil?
          algorithm.hexdigest(value)
        else
          algorithm.hexdigest(preprocessor.call(value))
        end
      end
    end
  end
end
