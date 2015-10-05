class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :second_name
      t.string :first_surname
      t.string :second_surname
      t.string :email
      t.integer :type_document
      t.string  :document
      t.integer :days_age
      t.integer :months_age
      t.integer :years_age
      t.date :birthdate
      t.integer :gender
      t.string :profession
      t.integer :blood_type
      t.integer :nacionality
      t.references :eps, index: true, foreign_key: true
      t.references :arl, index: true, foreign_key: true
      t.string :address
      t.integer :condition
      t.references :city, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
