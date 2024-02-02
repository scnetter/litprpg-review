class AddColToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :synopsis, :text
    add_column :books, :publish_date, :datetime
  end
end
