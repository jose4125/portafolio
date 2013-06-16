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
  attr_accessible :desc_corta, :description, :imagen, :name, :url, :skill_ids
  has_and_belongs_to_many :skills
  has_attached_file :photo, style: { medium: '300X300>'},
                    url: "/assets/projects/:id/:style/:basename.:extension",
                    path: ":rails_root/public/assets/projects/:id/:style/:basename.:extension"

  validates_attachment_size :photo, less_than: 5.megabytes
  validates_attachment_content_type :photo, content_type: ['image/jpeg', 'image/png']

end
