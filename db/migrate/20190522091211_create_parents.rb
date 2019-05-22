class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.text :name
      t.text :type

      t.timestamps
    end
  end
end
