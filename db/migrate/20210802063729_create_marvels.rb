# frozen_string_literal: true

class CreateMarvels < ActiveRecord::Migration[6.1]
  def change
    create_table :marvels do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
