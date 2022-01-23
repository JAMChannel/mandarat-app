# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# Rails.rootを使用するために必要
require File.expand_path(File.dirname(__FILE__) + '/environment')
set :path_env, ENV['PATH']
job_type :runner, "cd :path && PATH=':path_env' bin/rails runner -e :environment ':task' :output"

# set :job_template, "/bin/zsh -l -c ':job'"
# job_type :rake, "export PATH=\"$HOME/.rbenv/bin:$PATH\"; eval \"$(rbenv init -)\"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output"
# cronを実行する環境変数
rails_env = ENV['RAILS_ENV'] || :development
# cronを実行する環境変数をセット
set :environment, rails_env
# cronのログの吐き出し場所
set :output, "#{Rails.root}/log/cron.log"

# every 1.minute do
every :day, at: '9:00 am' do
  runner 'Info.slack'
  # rake 'subscription:update'
  # runner "InfosController.new"
  # begin
  #   # rake 'subscription:update'
  #   runner "Info.slack"
  #   # runner "InfosController.new"
  #   # runner "http://localhost:3000/infos/new"
  # rescue => e
  #   Rails.logger.error("aborted rails runner")
  #   raise e
  # end
end
