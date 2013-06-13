class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :imagen
      t.string :desc_corta
      t.string :url

      t.timestamps
    end
  end
end
