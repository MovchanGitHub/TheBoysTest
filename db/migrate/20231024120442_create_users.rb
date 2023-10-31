class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :email, uniqueness: true, null: false
      t.string :password_digest
      t.integer :rating
      t.integer :level
      t.references :subs_level_id
      t.string :photo_link
      t.integer :tests_passed_today

      t.timestamps
    end
  end
end
