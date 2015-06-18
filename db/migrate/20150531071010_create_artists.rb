class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :rating

      t.timestamps
    end
  end
end
