class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :email,            :null => false
      t.string   :first_name
      t.string   :second_name
      t.string   :first_surname
      t.string   :second_surname
      t.integer  :type_document
      t.string   :document
      t.string   :medical_record
      t.integer  :rol_id
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end