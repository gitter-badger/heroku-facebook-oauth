class WelcomeController < ApplicationController
  def index
    @works = Work.all
  end


  def edit

  end
end
