class Question < ApplicationRecord
    validates :question, presence: true, length: { minimum: 3 }
    validates :image, presence: true
    validates :option0, presence: true, length: { minimum: 3 }
    validates :option1, presence: true, length: { minimum: 3 }
    validates :option2, presence: true, length: { minimum: 3 }
    validates :option3, presence: true, length: { minimum: 3 }
    validates :description0, length: { minimum: 3 }
    validates :description1, length: { minimum: 3 }
    validates :description2, length: { minimum: 3 }
    validates :description3, length: { minimum: 3 }
    validates :answer, presence: true, length: { minimum: 3 }
end
