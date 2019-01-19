class CreateBlogposts < ActiveRecord::Migration[5.2]
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
