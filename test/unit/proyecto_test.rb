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

require 'test_helper'

class ProyectoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
