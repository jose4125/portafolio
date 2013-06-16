class Acces < ActiveRecord::Base
  attr_accessible :name, :password_digest

  def authenticate( password )
    pass = Acces.find_by_password_digest( password )
  end

end
