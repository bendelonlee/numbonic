class WelcomeController < ApplicationController
  def index
    @password = PasswordFacade.new
  end
end
