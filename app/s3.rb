# frozen_string_literal: true

require_relative 'adapters/s3_adapter'
require_relative 'credentials'

class S3
  def self.list_buckets
    bucket_list = list(Credentials.profile_name)
    s3_list = bucket_list[:buckets]
    s3_list.map { |bucket| bucket[:name] }
  end

  def self.list(profile)
    S3Adapter.new(profile).list_buckets
  end
end
