class AddCategoryToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :category_id, :int
  end
end
