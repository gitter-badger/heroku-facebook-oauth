# coding: utf-8

class SessionsController < ApplicationController
<<<<<<< HEAD
  
=======

>>>>>>> 3236f0ef30a234633231a908c8274207c6f46425
  #----------#
  # callback #
  #----------
  def callback
<<<<<<< HEAD

=======
>>>>>>> 3236f0ef30a234633231a908c8274207c6f46425
    auth = request.env["omniauth.auth"]
    user = User.where( provider: auth["provider"], uid: auth["uid"] ).first || User.create_with_omniauth( auth )
    session[:user_id] = user.id
    redirect_to :root, notice: "login"
  end

  #---------#
  # destroy #
  #---------#
  def destroy
    session[:user_id] = nil
    redirect_to :root, notice: "Logged out"
  end

  #---------#
  # failure #
  #---------#
  def failure
    render text: "<span style='color: red;'>Auth Failure</span>"
  end

end
