class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|

      t.string :person,       null: false
      t.string :relationship, null: false
      t.string :address,      null: false
      t.string :email
      t.string :phone,        null: false
      t.string :patient_id,   null: false

      t.references :profile,  null: false, foreign_key: true

      t.timestamps
    end
  end
end
