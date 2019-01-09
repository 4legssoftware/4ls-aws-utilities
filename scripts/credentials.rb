# frozen_string_literal: true

class Credentials
  def self.profile_name
    ENV['AWS_PROFILE'].to_s
  end
end
