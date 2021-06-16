class Review < ApplicationRecord
  belongs_to :technical_article
  belongs_to :user

  with_options presence: true do
    validates :body
  end

  validates :body, length:{ maximum: 400 }
end
