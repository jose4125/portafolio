class WelcomeController < ApplicationController
  def index
    @proyectos = Project.all
  end
end
