class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.integer :pet_id

      t.timestamps
    end
  end
end
