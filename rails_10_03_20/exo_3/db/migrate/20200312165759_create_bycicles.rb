class CreateBycicles < ActiveRecord::Migration[6.0]
  def change
    create_table :bycicles do |t|
      t.string :marque

      t.timestamps
    end
  end
end
