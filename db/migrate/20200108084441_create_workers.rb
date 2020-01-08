class CreateWorkers < ActiveRecord::Migration[5.2]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :position
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
