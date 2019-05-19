# frozen_string_literal: true

require 'attr_hasher/hashers'
require 'attr_hasher/version'

# Sets an attribute with the hash of a given attribute
module AttrHasher
  def self.extended(base) # :nodoc:
    base.class_eval do
      include InstanceMethods
      attr_writer :attr_hasher_options
      @attr_hasher_options = {}
    end
  end

  def attr_hasher(*attributes); end
end
