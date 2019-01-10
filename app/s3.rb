# frozen_string_literal: true

require_relative 'adapters/aws_adapter'
require_relative 'credentials'

class S3
  def self.list_buckets_for(region)
    s3_list = list(Credentials.profile_name, region)[:buckets]
    s3_list.map { |bucket| bucket[:name] }
  end

  def self.list(profile, region)
    s3 = AwsAdapter.s3(profile, region)
    s3.list_buckets
  end
end
