class CreateClinicHistories < ActiveRecord::Migration
  def change
    create_table :clinic_histories do |t|
      t.string :city
      t.string :department
      t.references :user, index: true, foreign_key: true
      t.string :cove
      t.string :mobiel_service
      t.integer :airport
      t.integer :type_service
      t.references :patient, index: true, foreign_key: true
      t.string :origin
      t.string :destination
      t.string :company
      t.string :accompanist_name
      t.integer :relationship
      t.string :phone
      t.text :reason_for_consultation
      t.text :current_illness

      t.timestamps null: false
    end
  end
end
