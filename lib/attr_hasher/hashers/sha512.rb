# frozen_string_literal: true

require 'attr_hasher/hashers/base'

module AttrHasher
  module Hashers
    # Hasher using the SHA512 algorithm
    class Sha512 < Base
      ALGORITHM = Digest::SHA512

      def hash(value)
        super(ALGORITHM, value)
      end
    end
  end
end
