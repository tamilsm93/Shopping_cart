class AddIndexToSlug < ActiveRecord::Migration[6.0]
  def change
    add_index :items, :slug
  end
end
