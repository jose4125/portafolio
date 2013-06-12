class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :name
      t.references :proyecto

      t.timestamps
    end
    add_index :categoria, :proyecto_id
  end
end
