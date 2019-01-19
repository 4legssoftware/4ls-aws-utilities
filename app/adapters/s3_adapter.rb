# frozen_string_literal: true

require 'aws-sdk'

class S3Adapter
  def initialize(profile)
    @s3 = Aws::S3::Client.new(profile: profile, region: 'us-east-1')
  end

  def list_buckets
    @s3.list_buckets
  end
end
