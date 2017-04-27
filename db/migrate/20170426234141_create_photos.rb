class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.text :source
      t.string :caption
      t.string :text

      t.timestamps
    end
  end
end
