class User < ApplicationRecord
    has_many :technical_articles
    with_options presence: true do
        validates :name
        validates :age
        validates :address
        validates :sex
    end

    validates :name, length: { maximum: 50 }, uniqueness: true
    validates :age, numericality: {only_integer: true}
    validates :address, length: { maximum: 200 } 
    validates :sex, numericality: { less_than: 2 }

end
