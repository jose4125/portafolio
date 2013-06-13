class LabelsProjects < ActiveRecord::Migration
  def up
    create_table :labels_projects, :id => false do |f|
      f.integer :label_id, :project_id
    end
  end

  def down
    drop_table :labels_projects
  end
end
