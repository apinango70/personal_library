class Author < ApplicationRecord
    #Relación 1:n con modelo books
    #belongs_to :book
    #validaciones
    validates :name, presence: true
    validates :nationality, presence: true
end
