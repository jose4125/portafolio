class ContactController < ApplicationController
  def new
  end

  def create
    if params[:contact][:name] && params[:contact][:mail] && params[:contact][:message]
      Contact.contact_portafolio( params[:contact] ).deliver
    end

    flash[:succes] = 'mensaje enviado'
    redirect_to root_path
  end
end
