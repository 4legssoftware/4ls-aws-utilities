# frozen_string_literal: true

require_relative '../scripts/credentials'
require_relative '../scripts/s3.rb'

describe S3 do
  it 'can list bucket names' do
    bucket_names = S3.list_buckets_for('us-east-1')
    expect(bucket_names).not_to be_empty
    expect(bucket_names[0]).to be_a String
  end
end
