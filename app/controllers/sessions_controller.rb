class SessionsController < ApplicationController
  def new
  end

  def create
      if params.include?(:name) && params[:name] == session[:name]
          binding.pry
          redirect_to '/'
      elsif params.include?(:name) && params[:name] != ''
          binding.pry
            session[:name] = params[:name]
      else
          binding.pry
            redirect_to '/sessions/new'
      end
  end

  def destroy

  end
end
