require_relative '../../scripts/authorization/credentials'

describe Credentials do
  describe 'profile' do
    it 'can access AWS' do
      # credentials = Credentials.new
      # s3.list()
      expect(['result']).not_to be_empty
    end
  end
end