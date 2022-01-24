class Borrower < ApplicationRecord
    has_many :people
    has_many :books
end
