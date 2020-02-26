class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :last_fed
      t.string :next_feeding

      t.timestamps
    end
  end
end
