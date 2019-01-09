# frozen_string_literal: true

require_relative '../scripts/credentials'
require 'aws-sdk'

class S3
  def self.list(profile, region)
    s3 = Aws::S3::Client.new(profile: profile, region: region)
    s3.list_buckets
  end
end

print "\n\n"
profile_name = Credentials.profile_name
buckets = S3.list(profile_name, 'us-east-1')
print "#{buckets}\n\n"
