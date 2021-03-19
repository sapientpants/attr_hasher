# frozen_string_literal: true

require 'attr_hasher/hashers/sha512'
require_relative '../../../spec_helper'

RSpec.describe AttrHasher::Hashers::Sha512, '#hash' do
  context 'without preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha512.new }

    it 'creates expected hashes' do
      expected = '861844d6704e8573fec34d967e20bcfef3d424cf48be04e6dc08f2bd58c' \
                 '729743371015ead891cc3cf1c9d34b49264b510751b1ff9e537937bc46b' \
                 '5d6ff4ecc8'
      expect(hasher.hash('Hello World!')).to eq expected
    end
  end

  context 'with lambda preprocessor' do
    let(:hasher) { AttrHasher::Hashers::Sha512.new(preprocessor: preprocessor) }
    let(:preprocessor) { ->(plain) { "ABC#{plain}XYZ" } }

    it 'creates expected hashes' do
      expected = '10322d61b78b573aa5f82ef7f5dd0c075a248d7b8eea67bbe22b756a6ee' \
                 '83783deb66f9318dfe57a7d476a6a8ea983b202716f5458c8c935a8b11c' \
                 '762c4af77c'

      expect(hasher.hash('Hello World!')).to eq expected
    end
  end
end
