class CreateAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :additional_informations do |t|
      t.text :analysis
      t.text :print_diagnosed
      t.text :plan_and_treatment
      t.text :observations_recommendations
      t.references :clinic_history, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
