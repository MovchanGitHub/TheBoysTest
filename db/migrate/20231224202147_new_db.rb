class NewDb < ActiveRecord::Migration[7.1]
  def change
    rename_table :genres, :tags

    create_table :tagstests do |t|
      t.integer :test_id
      t.integer :tag_id

      t.timestamps
    end

    remove_column :tests, :genre_id, :integer
  end
end
