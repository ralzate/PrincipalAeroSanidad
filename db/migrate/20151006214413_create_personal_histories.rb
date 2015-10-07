class CreatePersonalHistories < ActiveRecord::Migration
  def change
    create_table :personal_histories do |t|
      t.boolean :neunatales
      t.text :neunatales_description
      t.boolean :patologicos
      t.text :patologicos_description
      t.boolean :quirurgicos
      t.text :quirurgicos_description
      t.boolean :farmacologicos
      t.text :farmacologicos_description
      t.boolean :alergicos
      t.text :alergicos_description
      t.boolean :toxicos
      t.text :toxicos_description
      t.boolean :traumaticos
      t.text :traumaticos_description
      t.boolean :hospitables
      t.text :hospitables_description
      t.boolean :atep_laboral
      t.text :atep_laboral_description
      t.boolean :familiar
      t.text :familiar_description
      t.boolean :inmunologicos
      t.text :inmunologios_description
      t.boolean :asociado_viajes_de_vuelo
      t.text :asociado_viajes_de_vuelo_description
      t.integer :menstrual_cycle
      t.string :gestational_age
      t.string :eco
      t.integer :fum
      t.boolean :pregnancy
      t.string :g
      t.string :p
      t.string :c
      t.string :a
      t.string :m
      t.string :v
      t.string :e
      t.references :clinic_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
