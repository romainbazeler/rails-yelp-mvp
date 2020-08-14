class RemoveColumnReferes < ActiveRecord::Migration[6.0]
  def change
    def change
      remove_column :reviews, :restaurant, :references
    end
  end
end
