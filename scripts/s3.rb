# frozen_string_literal: true

class S3
  def self.list(profile, region)
    s3 = Aws::S3::Client.new(profile: profile, region: region)
    s3.list_buckets
  end
end
