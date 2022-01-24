class Book < ApplicationRecord
    enum categories: [:fiction,:science,:history,:education]
end
