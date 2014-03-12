class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :price
      t.references :place

      t.timestamps
    end
  end
end
