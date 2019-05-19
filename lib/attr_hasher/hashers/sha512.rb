# frozen_string_literal: true

require 'attr_hasher/hashers/base'

module AttrHasher
  module Hashers
    # Hasher using the SHA512 algorithm
    class Sha512 < Base
      ALGORITHM = Digest::SHA512

      def initialize(options = {})
        @options = options
      end

      def hash(value)
        super(ALGORITHM, value, @options)
      end
    end
  end
end
