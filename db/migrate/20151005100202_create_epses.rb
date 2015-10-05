class CreateEpses < ActiveRecord::Migration
  def change
    create_table :epses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
