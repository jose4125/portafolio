class Admin::SessionsController < ApplicationController
  def new
  end

  def create
    user = Acces.find_by_name(params[:session][:name])

    if user && user.authenticate(params[:session][:password])
      login user
      flash[:success] = 'esta logueado'
      redirect_to admin_users_url
    else
      puts 'error'
      flash.now[:error] = 'incorrecto nombre o password'
      render 'new'
    end

  end

  def destroy
    session[:acces_id] = nil
    redirect_to admin_url, notice: 'logout exisotoso'
  end
end
