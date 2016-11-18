class CreateDistributions < ActiveRecord::Migration[5.0]
  def change
    create_table :distributions do |t|
      t.string :country

      t.timestamps
    end
  end
end
