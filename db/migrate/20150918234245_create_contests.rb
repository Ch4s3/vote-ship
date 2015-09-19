class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.date :date
      t.string :name

      t.timestamps null: false
    end
  end
end
