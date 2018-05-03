class Book < ApplicationRecord
    validates :name, :author,:price, presence: true

    belongs_to:user
end
