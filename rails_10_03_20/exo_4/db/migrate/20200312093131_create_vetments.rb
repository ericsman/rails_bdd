class CreateVetments < ActiveRecord::Migration[6.0]
  def change
    create_table :vetments do |t|
      t.string :name

      t.timestamps
    end
  end
end
