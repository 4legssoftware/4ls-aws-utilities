# frozen_string_literal: true

require_relative '../app/credentials'
require_relative '../app/s3'
require 'aws-sdk'

describe Credentials do
  it 'can get the AWS profile name' do
    profile = Credentials.profile_name
    result = S3.list(profile, 'us-east-1')
    expect(result).not_to be_empty
  end
end
