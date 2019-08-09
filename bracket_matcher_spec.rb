# frozen_string_literal: true

require 'simplecov'
SimpleCov.start
require 'pry'
require 'rspec'
require_relative 'spec_helper'
require_relative 'bracket_matcher'

describe '#bracket_matcher' do
  let(:string) { 'Hi! What is your name again (I forgot)?' }
  let(:string1) { 'Hi! What is your name again (I forgot?' }
  let(:string2) { '(Hi! What is your name again I forgot?)' }
  let(:string3) { '(Hi! What is your name again I forgot?' }
  let(:string4) { 'Hi!) What is your name again (I forgot?' }
  let(:string5) { 'Hi!) What is your name again I forgot?' }
  let(:string6) { 'Hi! (What is your name again (I forgot))?' }
  let(:string7) { 'Hi! (What is your name again (I forgot?)' }

  it 'returns true if at a least one pair of the brackets in the string is matching' do
    expect(bracket_matcher(string)).to be(true)
    expect(bracket_matcher(string1)).to be(false)
    expect(bracket_matcher(string2)).to be(true)
    expect(bracket_matcher(string3)).to be(false)
    expect(bracket_matcher(string4)).to be(false)
    expect(bracket_matcher(string5)).to be(false)
    expect(bracket_matcher(string6)).to be(true)
    expect(bracket_matcher(string7)).to be(true)
  end
end
