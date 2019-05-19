# frozen_string_literal: true

require 'attr_hasher/hashers/base'

module AttrHasher
  module Hashers
    # Hasher using the SHA256 algorithm
    class Sha256 < Base
      ALGORITHM = Digest::SHA256

      def hash(value)
        super(ALGORITHM, value, @options)
      end
    end
  end
end
