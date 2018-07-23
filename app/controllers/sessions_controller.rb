class SessionsController < ApplicationController
  def new
  end

  def create
      binding.pry

      if params.include?(:name) && params[:name] != ''
          binding.pry
            session[:name] = params[:name]
            redirect_to '/'
      else
          binding.pry
            redirect_to '/sessions/new'
      end
  end

  def destroy

  end
end
