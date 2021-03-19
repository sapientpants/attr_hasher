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
        plain_value = if preprocessor.nil?
                        value
                      elsif preprocessor.is_a?(Proc)
                        preprocessor.call(value)
                      end

        algorithm.hexdigest(plain_value)
      end

      protected

      def instance_method?(name)
        methods.any? { |im| im.to_sym == name.to_sym }
      end
    end
  end
end
