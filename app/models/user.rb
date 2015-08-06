class User < ActiveRecord::Base
	has_secure_password
	validates :email, :password, presence: true
	# validates :email, format: { with: /\A[a-zA-Z]+\z/,
	#     message: "only allows letters" }
end
