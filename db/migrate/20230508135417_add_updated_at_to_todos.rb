class AddUpdatedAtToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :updated_at, :datetime
  end
end
