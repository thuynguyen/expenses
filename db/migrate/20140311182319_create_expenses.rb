class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :price
      t.references :user

      t.timestamps
    end
  end
end
