class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer_name
      t.string :reviewer_email
      t.text :review_text
      t.string :reviewer_rating
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
