# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  descriptin :text
#  ocupacion  :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  mail       :string(255)
#  github     :string(255)
#  linkedin   :string(255)
#  celular    :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :descriptin, :ocupacion, :image, :skill_ids, :mail, :github, :linkedin, :celular
  has_many :skills
end
