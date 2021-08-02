class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.date :release_date, null: false
      t.integer :rating, null: false
      t.references :gender, null: false, foreign_key: true

      t.timestamps
    end
  end
end
