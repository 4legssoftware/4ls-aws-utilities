# frozen_string_literal: true

require_relative '../app/credentials'
require_relative '../app/s3'

describe S3 do
  it 'can list bucket names' do
    allow(System).to receive(:log)
    expect(System).to(receive(:environment_var)
                        .with('AWS_PROFILE').and_return('temp'))

    bucket_names = S3.list_buckets_for('us-east-1')

    expect(bucket_names).not_to be_empty
    expect(bucket_names[0]).to be_a String
  end
end
