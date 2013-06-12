# == Schema Information
#
# Table name: categoria
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  proyecto_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Categorium < ActiveRecord::Base
  belongs_to :proyecto
  attr_accessible :name
end
