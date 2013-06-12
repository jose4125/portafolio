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

require 'test_helper'

class CategoriumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
