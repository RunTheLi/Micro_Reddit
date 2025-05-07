class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :city
      t.string :state
      t.string :country
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
