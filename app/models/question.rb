class Question < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_one_attached :imagestorage

  validates :question, presence: true, length: { minimum: 3 }
  validates :image, presence: true
  validates :option0, presence: true, length: { minimum: 3 }
  validates :option1, presence: true, length: { minimum: 3 }
  validates :option2, presence: true, length: { minimum: 3 }
  validates :option3, presence: true, length: { minimum: 3 }
  validates :answer, presence: true, length: { minimum: 3 }
  validates :hint, presence: true, length: { minimum: 3 }
  validates :answer_description, presence: true, length: { minimum: 3 }

  def get_image_url
    url_for(self.imagestorage)
  end

end
