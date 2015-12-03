class CreateQuadrants < ActiveRecord::Migration
  def change
    create_table :quadrants do |t|
      t.references :user, index: true
      t.references :context, index: true
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
