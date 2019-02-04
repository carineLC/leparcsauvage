class AddSlugToBlogposts < ActiveRecord::Migration[5.2]
  def change
    add_column :blogposts, :slug, :string
    add_index :blogposts, :slug, unique: true
  end
end
