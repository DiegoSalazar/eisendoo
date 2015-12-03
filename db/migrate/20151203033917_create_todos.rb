class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.references :quadrant, index: true
      t.references :user, index: true
      t.text :body
      t.datetime :due
      t.boolean :notify
      t.string :recurring_rule

      t.timestamps
    end
  end
end
