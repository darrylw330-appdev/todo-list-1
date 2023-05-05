class AddCreatedAtToToDos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :created_at, :datetime
  end
end
