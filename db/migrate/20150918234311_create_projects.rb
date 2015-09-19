class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.integer :votes
      t.references :contest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
