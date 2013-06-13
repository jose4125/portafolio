# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  imagen      :string(255)
#  desc_corta  :string(255)
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :desc_corta, :description, :imagen, :name, :url, :label_ids
  has_and_belongs_to_many :labels
end
