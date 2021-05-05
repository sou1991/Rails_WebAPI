class TechnicalArticle < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :body
end

validates :title, length: { maximum: 100 } 
validates :body, length: { maximum: 400 } 

end
