class SkillsProjects < ActiveRecord::Migration
  def up
    create_table :projects_skills, :id => false do |f|
      f.integer :skill_id, :project_id
    end
  end

  def down
    drop_table :skills_projects
  end
end
