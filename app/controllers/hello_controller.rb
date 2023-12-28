class HelloController < ApplicationController
	def index
		render json: { message: "Hello, Rails!" }
	end
end
