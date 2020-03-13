class CreateJoinTableVetmentUser < ActiveRecord::Migration[6.0]
  def change
    create_join_table :vetments, :users do |t|
      t.belongs_to :user, index: true
      has_many :vetments
      #t.index [:vetment_id, :user_id]
      # t.index [:user_id, :vetment_id]
    end
  end
end
