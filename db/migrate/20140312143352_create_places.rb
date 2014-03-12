class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.datetime :start_date
      t.references :user

      t.timestamps
    end
  end
end
