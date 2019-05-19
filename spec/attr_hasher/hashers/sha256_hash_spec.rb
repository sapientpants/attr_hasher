# frozen_string_literal: true

require 'attr_hasher/hashers/sha256'
require_relative '../../spec_helper'

RSpec.describe AttrHasher::Hashers::Sha256, '#hash' do
  let(:preprocessor) { ->(plain) { "ABC#{plain}XYZ" } }

  context 'without preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha256.new }

    it 'creates expected hashes' do
      expected = '7f83b1657ff1fc53b92dc18148a1d65dfc2d4b1fa3d677284addd200126' \
                 'd9069'
      expect(hasher.hash('Hello World!')).to eq expected
    end
  end

  context 'with preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha256.new(preprocessor: preprocessor) }

    it 'creates expected hashes' do
      expected = 'acfaa5d0ac27639f27cd62477859d099f433217920ea73bc234f900dea0' \
                 '9ac1b'

      expect(hasher.hash('Hello World!')).to eq expected
    end
  end
end
