# frozen_string_literal: true

class DeviseCreateDeviseUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :subs_levels, &:timestamps
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      t.string   :unlock_token # Only if unlock strategy is :email or :both
      t.datetime :locked_at


      t.integer :rating
      t.integer :level
      t.string :photo_link
      t.integer :tests_passed_today
      t.references :subs_levels

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    add_index :users, :confirmation_token,   unique: true
    add_index :users, :unlock_token,         unique: true

    create_table :admins do |t|
      t.string :email
      t.string :encrypted_password
      t.timestamps null: false
    end

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

    create_table :genres do |t|
      t.string :name
      t.timestamps
    end
  end
end
