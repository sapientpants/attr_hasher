# frozen_string_literal: true

require 'attr_hasher/hashers/base'

module AttrHasher
  module Hashers
    # Hasher using the SHA384 algorithm
    class Sha384 < Base
      ALGORITHM = Digest::SHA384

      def hash(value)
        super(ALGORITHM, value, @options)
      end
    end
  end
end
