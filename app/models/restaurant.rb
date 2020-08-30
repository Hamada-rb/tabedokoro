class Restaurant < ApplicationRecord
    has_many_attached :images


    scope :new_restaurants, -> {
        last(4)
    }

    scope :popular_restaurants, -> {
        last(4)
    }
end
