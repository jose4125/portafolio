class AddMailGithubToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mail, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :celular, :string
  end
end
