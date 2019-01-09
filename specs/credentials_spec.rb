# frozen_string_literal: true

require_relative '../app/credentials'
require_relative '../app/s3'
require 'aws-sdk'

describe Credentials do
  it 'can get the AWS profile name' do
    profile_name = Credentials.profile_name
    expect(profile_name).is_a? String
  end
end
