class CreatePhysicalExams < ActiveRecord::Migration
  def change
    create_table :physical_exams do |t|
      t.string :ta_mmgh
      t.string :heart_rate
      t.string :breathing_frequency
      t.string :sat_of_o_ambiente
      t.string :sat_of_o_supplementary
      t.string :temperature
      t.string :weight
      t.string :in
      t.string :kilograms
      t.string :height_in_centimeters
      t.string :glucose
      t.string :measurement
      t.boolean :head
      t.text :head_description
      t.boolean :sense_organ
      t.string :sense_organ_description
      t.boolean :neck
      t.text :neck_description
      t.boolean :rib_cage
      t.text :rib_cage_description
      t.boolean :heart
      t.text :heart_description
      t.boolean :lungs
      t.text :lungs_description
      t.boolean :abdomen
      t.text :abdomen_description
      t.boolean :genitourinary
      t.text :genitourinary_description
      t.boolean :rectum
      t.text :rectum_description
      t.boolean :extremities
      t.text :extremities_description
      t.boolean :skin_and_appendages
      t.text :skin_and_appendages_description
      t.boolean :skeletal_muscle
      t.text :skeletal_muscle_description
      t.boolean :mental
      t.text :mental_description
      t.boolean :neurological
      t.text :neurological_description
      t.integer :alteration
      t.integer :eye_opening
      t.integer :verbal_answer
      t.integer :motor_response
      t.integer :other_signs
      t.references :clinic_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
