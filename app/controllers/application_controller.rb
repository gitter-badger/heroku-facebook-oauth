class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :auth

  private
  def auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sgotou' && pass == 's19781231'
    end
  end
end
