class HomeController < ApplicationController
  def index
    render json: { message: 'Welcome to Auth0'}
  end
end
