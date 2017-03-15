class Career < ApplicationRecord
	default_scope -> { order(created_at: :desc) }
	
	validates :position, presence: true

end
