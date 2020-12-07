class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :score
      t.string :comment

      t.timestamps
    end
  end
end
