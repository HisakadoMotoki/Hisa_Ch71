class Book < ApplicationRecord
	belongs_to :user
	belongs_to :board
	validates :user_id, presence: true
	validates :board_id, presence: true
	validates :title, presence: true

end
