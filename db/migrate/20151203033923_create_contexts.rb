class CreateContexts < ActiveRecord::Migration
  def change
    create_table :contexts do |t|
      t.string :name
      t.boolean :main

      t.timestamps
    end
  end
end
