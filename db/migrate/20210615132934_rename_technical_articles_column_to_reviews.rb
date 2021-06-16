class RenameTechnicalArticlesColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :technical_articles_id, :technical_article_id
  end
end
