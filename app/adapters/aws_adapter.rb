# frozen_string_literal: true

require 'aws-sdk'

class AwsAdapter
  def self.s3(profile, region)
    Aws::S3::Client.new(profile: profile, region: region)
  end
end
