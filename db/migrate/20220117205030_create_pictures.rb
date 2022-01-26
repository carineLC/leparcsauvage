class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :location
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
