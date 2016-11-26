class Review < ActiveRecord::Base
    belongs_to :book
    
end


# @review.book.id
# @review.book.name