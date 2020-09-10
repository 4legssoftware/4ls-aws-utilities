# frozen_string_literal: true

task default: %w[rubocop spec]

require 'rubocop/rake_task'
RuboCop::RakeTask.new

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--tag ~adapter'
end

RSpec::Core::RakeTask.new('spec:all')

RSpec::Core::RakeTask.new('spec:adapter') do |t|
  t.rspec_opts = '--tag adapter'
end

task :op, [:vault] do |_task, args|
  args.with_defaults(vault: ENV['DEFAULT_VAULT'])
  puts "Sign into vault [#{args.vault}]"
  sh "op signin #{args.vault}"
end
