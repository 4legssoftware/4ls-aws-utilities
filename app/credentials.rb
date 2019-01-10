# frozen_string_literal: true

class Credentials
  def self.profile_name
    profile_name = ENV['AWS_PROFILE'].to_s
    handle_missing_profile if profile_name.empty?
    print "using profile: #{profile_name}\n\n"
    profile_name
  end

  def self.handle_missing_profile
    print 'No profile set. '
    print "Please set AWS_PROFILE as an environment variable.\n\n"
    exit 1
  end
end
