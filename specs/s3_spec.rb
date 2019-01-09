# frozen_string_literal: true

require_relative '../scripts/credentials'
require_relative '../scripts/s3.rb'

describe S3 do
  it 'can list bucket names' do
    result = S3.list(Credentials.profile_name, 'us-east-1')
    expect(result).not_to be_empty
  end
end
