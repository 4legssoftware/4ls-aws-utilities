# frozen_string_literal: true

require_relative '../scripts/credentials'
require 'aws-sdk'

class S3
  def self.list(profile, region)
    s3 = Aws::S3::Client.new(profile: profile, region: region)
    s3.list_buckets
  end

  def self.list_buckets_for(region)
    s3_list = list(Credentials.profile_name, region)[:buckets]
    s3_list.map { |bucket| bucket[:name] }
  end
end
