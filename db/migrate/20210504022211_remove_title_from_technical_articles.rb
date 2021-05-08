class RemoveTitleFromTechnicalArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :technical_articles, :lgtm, :integer
  end
end
