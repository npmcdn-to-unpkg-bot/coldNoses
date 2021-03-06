class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :cgc
      t.string :registration
      t.string :therapy_group
      t.date :renewal_date
      t.string :image
      t.string :description
      t.string :gender
      t.string :member
      t.boolean :retired

      t.timestamps
    end
  end
end
