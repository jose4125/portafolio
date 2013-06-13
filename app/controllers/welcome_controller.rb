class WelcomeController < ApplicationController
  def index
    @proyectos = Project.all
    @users = User.find ( 1 )
    @arrayname = []
    @arrayper = []
    @users.skills.each do |s|
      @arrayname << s.name
      @arrayper << s.percent
    end
  end
end
