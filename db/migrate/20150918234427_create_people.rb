class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.boolean :voted
      t.string :uuid
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
