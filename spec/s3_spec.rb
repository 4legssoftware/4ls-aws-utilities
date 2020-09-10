# frozen_string_literal: true

require 'date'
require_relative '../app/credentials'
require_relative '../app/s3'

BUCKET_LIST =
  { buckets: [
    { name: '[FILTERED]',
      creation_date: DateTime.parse('2015-07-13 17:28:24 UTC') },
    { name: '[FILTERED]',
      creation_date: DateTime.parse('2018-09-26 01:19:01 UTC') },
    { name: '[FILTERED]',
      creation_date: DateTime.parse('2018-11-25 00:14:47 UTC') }
  ],
    owner: { display_name: '[FILTERED]', id: '[FILTERED]' } }.freeze

describe S3 do
  it 'can list bucket names' do
    allow(System).to receive(:log)
    allow(System).to(receive(:environment_var)
                       .with('AWS_PROFILE').and_return('temp'))
    s3_adapter = instance_double(S3Adapter)
    allow(S3Adapter).to receive(:new).and_return s3_adapter
    expect(s3_adapter).to receive(:list_buckets).and_return BUCKET_LIST

    bucket_names = S3.list_buckets

    expect(bucket_names).not_to be_empty
    expect(bucket_names[0]).to be_a String
  end
end
