class AddParentsToHouseholds < ActiveRecord::Migration[5.2]
  def change
    add_reference :parents, :household, foreign_key: true
  end
end
