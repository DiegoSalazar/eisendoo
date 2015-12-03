class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.references :todo, index: true
      t.references :comment, index: true
      t.string :attachment_file_name
      t.integer :attachment_file_size
      t.string :attachment_content_type
      t.datetime :attachment_updated_at

      t.timestamps
    end
  end
end
