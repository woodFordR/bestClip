class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.date :upload_date

      t.timestamps
    end
    add_index :photos, :upload_date
  end
end
