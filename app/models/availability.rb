class Availability < ApplicationRecord
    enum entity: [:people,:books]
end
