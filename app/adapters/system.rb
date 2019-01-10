# frozen_string_literal: true

class System
  def self.environment_var(name)
    ENV[name].to_s
  end

  def self.log(message)
    print message
  end

  def self.terminate
    exit 1
  end
end
