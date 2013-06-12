# == Schema Information
#
# Table name: proyectos
#
#  id          :integer          not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  imagen      :string(255)
#  string      :string(255)
#  des_corta   :string(255)
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Proyecto < ActiveRecord::Base
  attr_accessible :des_corta, :descripcion, :imagen, :nombre, :string, :url
  has_many :categoies
end
