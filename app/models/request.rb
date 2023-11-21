class Request < ApplicationRecord
    has_many :occurences
    belongs_to :supply
end
