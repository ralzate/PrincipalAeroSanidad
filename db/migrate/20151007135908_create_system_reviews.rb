class CreateSystemReviews < ActiveRecord::Migration
  def change
    create_table :system_reviews do |t|
      t.boolean :cardiovascular
      t.text :cardiovascular_description
      t.boolean :respiratory
      t.boolean :abdominal
      t.text :abdominal_description
      t.boolean :genito_urinario
      t.text :genito_urinario_description
      t.string :neurological
      t.text :neurological_description
      t.boolean :mental
      t.text :mental_description
      t.boolean :sense_organ
      t.text :sense_organ_description
      t.boolean :skeletal_muscle
      t.text :skeletal_muscle_description
      t.string :skin_and_appendages
      t.text :skin_and_appendages_description
      t.references :clinic_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
