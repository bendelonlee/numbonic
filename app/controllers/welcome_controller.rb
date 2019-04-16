class WelcomeController < ApplicationController
  def index
    @password = PasswordFacade.new(7)
  end
end
