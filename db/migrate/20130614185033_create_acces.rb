class CreateAcces < ActiveRecord::Migration
  def change
    create_table :acces do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
    add_index :acces, :name, unique: true
  end
end
