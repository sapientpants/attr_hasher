# frozen_string_literal: true

require 'attr_hasher/version'
require_relative '../spec_helper'

RSpec.describe AttrHasher::Version, '.string' do
  it 'is 0.1.0' do
    expect(described_class.string).to eq '0.1.0'
  end
end
