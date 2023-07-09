class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.string  :partient,    null: false
      t.date    :barth,       null: false
      t.integer :gender_id,   null: false
      t.string  :blood_type,  null: false
      t.string  :work,        null: false
      t.string  :family,      null: false
      
      t.references :user,     null: false, foreign_key: true

      t.timestamps
    end
  end
end
