# frozen_string_literal: true

class Credentials
  def self.profile_name
    profile_name = ENV['AWS_PROFILE'].to_s
    print "using profile: #{profile_name}\n\n"
    profile_name
  end
end
