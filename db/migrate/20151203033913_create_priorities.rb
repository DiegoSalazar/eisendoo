class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.string :quadrant_sort
      t.boolean :active
      t.references :user, index: true

      t.timestamps
    end
  end
end
