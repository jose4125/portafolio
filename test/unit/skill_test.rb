# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  percent    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Skill.new.valid?
  end
end
