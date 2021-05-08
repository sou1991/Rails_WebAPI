class CreateTechnicalArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :technical_articles do |t|
      t.string :title
      t.string :body
      t.integer :lgtm
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
