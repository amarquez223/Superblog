class Blog < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	validates :title, presence: true
	validates :body, presence: true
	validates :body, length: {minimum: 250}

end
