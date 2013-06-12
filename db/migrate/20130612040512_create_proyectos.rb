class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :string
      t.string :des_corta
      t.string :url

      t.timestamps
    end
  end
end
