# frozen_string_literal: true

require 'attr_hasher/hashers/sha512'
require_relative '../../spec_helper'

RSpec.describe AttrHasher::Hashers::Sha512, '#hash' do
  let(:hasher) { AttrHasher::Hashers::Sha512.new }

  it 'creates expected hashes' do
    expect(hasher.hash('Hello World!')).to eq '861844d6704e8573fec34d967e20bc' \
                                              'fef3d424cf48be04e6dc08f2bd58c7' \
                                              '29743371015ead891cc3cf1c9d34b4' \
                                              '9264b510751b1ff9e537937bc46b5d' \
                                              '6ff4ecc8'
  end
end
