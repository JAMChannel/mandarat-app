class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger  # フラッシュメッセージを表示

  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"] 
    end
  end
end
