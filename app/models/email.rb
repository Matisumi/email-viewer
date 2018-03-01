class Email < ApplicationRecord

	validates :object, presence: true, length: {maximum: 78}
	validates :body, presence: true

end
