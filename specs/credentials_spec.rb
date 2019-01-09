# frozen_string_literal: true

require_relative '../scripts/credentials'
require_relative '../scripts/s3.rb'
require 'aws-sdk'

describe Credentials do
  describe 'profile' do
    it 'can access AWS' do
      profile = Credentials.profile_name
      result = S3.list(profile, 'us-east-1')
      expect(result).not_to be_empty
    end
  end
end
