class ChangeParentsColumnTypeName < ActiveRecord::Migration[5.2]
  def change
    rename_column :parents, :type, :parent_type
  end
end
