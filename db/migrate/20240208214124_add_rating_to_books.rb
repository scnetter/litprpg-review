class AddRatingToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :rating, :string, default: "1"
  end
end
