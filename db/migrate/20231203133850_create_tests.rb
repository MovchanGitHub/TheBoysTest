class CreateTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.string :code_word
      t.integer :owner_id
      t.string :name
      t.string :access_type_id
      t.integer :rating
      t.string :description
      t.integer :options_id
      t.integer :genre_id
      t.boolean :approved

      t.timestamps
    end
  end
end
