# frozen_string_literal: true

require 'attr_hasher/hashers/sha384'
require_relative '../../../spec_helper'

RSpec.describe AttrHasher::Hashers::Sha384, '#hash' do
  let(:preprocessor) { ->(plain) { "ABC#{plain}XYZ" } }

  context 'without preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha384.new }

    it 'creates expected hashes' do
      expected = 'bfd76c0ebbd006fee583410547c1887b0292be76d582d96c242d2a79272' \
                 '3e3fd6fd061f9d5cfd13b8f961358e6adba4a'
      expect(hasher.hash('Hello World!')).to eq expected
    end
  end

  context 'with preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha384.new(preprocessor: preprocessor) }

    it 'creates expected hashes' do
      expected = '34b4c1ed167435f983e8c1ed84924e579b39d7ec43ebe4d1ef92a13bdae' \
                 'f11ca3af22cb7d9fde1b0f6cebf426c9d3156'

      expect(hasher.hash('Hello World!')).to eq expected
    end
  end
end
