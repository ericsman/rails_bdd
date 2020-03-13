class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.belongs_to :commentaire, index: true

      t.timestamps
    end
  end
end
