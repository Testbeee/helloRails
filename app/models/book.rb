class Book < ActiveRecord::Base
    has_many :booksAuthors
    has_many :authors, through: :booksAuthors
    has_one  :bookPublisher
    has_one  :publisher, through: :bookPublisher
end
