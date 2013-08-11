# == Schema Information
#
# Table name: acces
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Acces < ActiveRecord::Base
  attr_accessible :name, :password_digest

  def authenticate( password )
    pass = Acces.find_by_password_digest( password )
  end

end
