# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :age
      t.integer :weight, null: false
      t.text :history

      t.timestamps
    end
    add_index :characters, :name, unique: true
  end
end
