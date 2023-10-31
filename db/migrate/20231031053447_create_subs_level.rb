# frozen_string_literal: true

class CreateSubsLevel < ActiveRecord::Migration[7.1]
  def change
    create_table :subs_levels, &:timestamps
  end
end
