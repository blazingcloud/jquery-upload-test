class CreateScreenshots < ActiveRecord::Migration
  def self.up
    create_table :screenshots do |t|
      t.string :title
      t.text :description
      t.string :image_file_name
      t.image_content_type :
      t.integer :image_file_size
      t.datetime :image_uploaded_at

      t.timestamps
    end
  end

  def self.down
    drop_table :screenshots
  end
end
