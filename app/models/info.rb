class Info < ApplicationRecord
	default_scope -> { order(created_at: :desc) }

	has_many :pictures

	validates :title, presence: true

end
