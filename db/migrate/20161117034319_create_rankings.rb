class CreateRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :rankings do |t|
      t.integer :stars
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
