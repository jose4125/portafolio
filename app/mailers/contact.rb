class Contact < ActionMailer::Base
  default to: "jose4125@gmail.com"
  #default from: "jose4125@hola.com"

  def contact_portafolio( content )
    puts 'cont_port'
    puts content[:mail]
    @content = content
    mail(subject: 'Email enviado desde el Protafolio', from: "#{ @content[:mail] }")
  end
end
