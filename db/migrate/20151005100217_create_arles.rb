class CreateArles < ActiveRecord::Migration
  def change
    create_table :arles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
