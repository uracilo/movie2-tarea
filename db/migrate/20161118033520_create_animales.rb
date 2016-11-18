class CreateAnimales < ActiveRecord::Migration[5.0]
  def change
    create_table :animales do |t|
      t.string :name
      t.string :scientificname

      t.timestamps
    end
  end
end
