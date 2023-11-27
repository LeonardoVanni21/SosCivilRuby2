class Request < ApplicationRecord
    has_one :occurences
    belongs_to :supply
end
