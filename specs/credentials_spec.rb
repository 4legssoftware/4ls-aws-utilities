# frozen_string_literal: true

require_relative '../app/credentials'
require_relative '../app/s3'
require 'aws-sdk'

describe Credentials do
  it 'can get the AWS profile name' do
    profile_name = Credentials.profile_name
    expect(profile_name).is_a? String
  end

  context 'missing profile' do
    before(:each) do
      allow(System).to receive(:log)
      expect(System).to receive(:exit)
    end

    it 'elegantly handles missing profile' do
      allow(System).to receive(:environment_var).and_return(nil)
      Credentials.profile_name
    end

    it 'elegantly handles empty profile' do
      allow(System).to receive(:environment_var).and_return('')
      Credentials.profile_name
    end
  end
end
