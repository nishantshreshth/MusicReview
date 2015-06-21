class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :email
      t.integer :rating
      t.text :comment
      t.references :artist, index: true

      t.timestamps
    end
  end
end
