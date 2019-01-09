# frozen_string_literal: true

require_relative '../../app/s3.rb'

print "\n\n"
buckets = S3.list_buckets_for('us-east-1')
buckets.each { |bucket| print "#{bucket}\n" }
print "\n\n"
