class ApplicationController < ActionController::Base
  protect_from_forgery
<<<<<<< HEAD
  before_filter :auth
=======
  # BASIC認証
  before_filter :auth
  # セッション有効期限延長
  before_filter :reset_session_expires
>>>>>>> 3236f0ef30a234633231a908c8274207c6f46425

  private
  def auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sgotou' && pass == 's19781231'
    end
  end
<<<<<<< HEAD
=======




  private
  #-----------------------#
  # reset_session_expires #
  #-----------------------#
  # セッション期限延長
  def reset_session_expires
    request.session_options[:expire_after] = 2.weeks
  end

  #--------------#
  # current_user #
  #--------------#
  def current_user
    @current_user ||= User.where( id: session[:user_id] ).first
  end

  helper_method :current_u
>>>>>>> 3236f0ef30a234633231a908c8274207c6f46425
end
