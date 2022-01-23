namespace :subscription do
  desc 'Slack通知機能'
  # task update: :environment do
  task :update do
    puts 'Hello'
    # client = Slack::Web::Client.new
    # client.chat_postMessage(
    #   token: ENV['SLACK_API_TOKEN'],
    #   channel: '#test',
    #   text: 'http://localhost:3000/infos/new'
    # )
  end
end
