class SessionsController < ApplicationController
  def new
  end

  def create
      if params.include?(:name) && params[:name] != ''
            session[:name] = params[:name]
            redirect_to '/'
      else
            redirect_to '/sessions/new'
      end
  end

  def destroy
      binding.pry
      if session[:name] == nil
      else
          session.clear
      end
  end
end
