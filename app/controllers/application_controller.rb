class ApplicationController < ActionController::Base
  protect_from_forgery
  # BASIC認証
  before_filter :auth
  # セッション有効期限延長
  before_filter :reset_session_expires

  # Works取得
  before_filter :works

  private
  def auth
    authenticate_or_request_with_http_basic do |user, pass|
      user == 'sgotou' && pass == 's19781231'
    end
  end


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


  #--------------#
  # works        #
	# 最新の5件を表示#
  #--------------#
  def works
    @works = Work.limit(5).order('created_at DESC')
	end

end
