# frozen_string_literal: true

require_relative 'adapters/system'

class Credentials
  def self.profile_name
    profile_name = System.environment_var 'AWS_PROFILE'
    handle_missing_profile unless profile_name && !profile_name.empty?
    System.log "\nCurrent profile: #{profile_name}\n\n"
    profile_name
  end

  def self.handle_missing_profile
    System.log 'No profile set. '
    System.log "Please set AWS_PROFILE as an environment variable.\n\n"
    System.terminate
  end
end
