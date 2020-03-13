class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.text :content
      t.belongs_to :patient, index: true
      t.belongs_to :doctor, index: true
      t.timestamps
    end
  end
end
