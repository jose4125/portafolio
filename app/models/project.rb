# == Schema Information
#
# Table name: projects
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  description        :text
#  imagen             :string(255)
#  desc_corta         :string(255)
#  url                :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  year               :integer
#

class Project < ActiveRecord::Base
  attr_accessible :desc_corta, :description, :imagen, :name, :url, :skill_ids, :photo, :year
  has_and_belongs_to_many :skills
  has_attached_file :photo, style: { medium: '300X300>'},
                    :default_url => '/assets/default.jpg',
                    url: "/:attachment/:id/:style/:basename.:extension",
                    path: ":rails_root/public/:attachment/:id/:style/:basename.:extension"

  validates_attachment_size :photo, less_than: 5.megabytes
  validates_attachment_content_type :photo, content_type: ['image/jpeg', 'image/png']

end
