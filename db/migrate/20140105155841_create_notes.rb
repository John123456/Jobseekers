class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.references :announcement

      t.timestamps
    end
    add_index :notes, :announcement_id
  end
end
