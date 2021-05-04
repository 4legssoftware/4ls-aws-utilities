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

desc '1Password signin "op[vault]"; defaults OP_VAULT'
task :op, [:vault] do |_task, args|
  args.with_defaults(vault: ENV['OP_VAULT'])
  vault = args.vault
  @op_session = ENV["OP_SESSION_#{vault}"]
  puts "Sign into 1Password [#{vault}]"
  @op_session = `op signin #{vault} --output=raw --session=#{@op_session}`.chomp
  sh "echo #{@op_session} > ~/.op/op_session"
end

desc 'Get MFA token from 1Password "mfa[item, vault]"; defaults: OP_ITEM, OP_VAULT'
task :mfa, [:item, :vault] do |_task, args|
  args.with_defaults(item: ENV['OP_ITEM'])
  args.with_defaults(vault: ENV['OP_VAULT'])
  vault = args.vault
  @op_session = ENV["OP_SESSION_#{vault}"]
  @op_session ||= `cat ~/.op/op_session`.chomp if File.exist?("#{Dir.home}/.op/op_session")
  Rake::Task[:op].invoke(vault) unless @op_session
  @item = args.item
  mfa = `op get totp "#{args.item}" --session=#{@op_session}`.chomp
  puts "mfa [#{mfa}]"
end
