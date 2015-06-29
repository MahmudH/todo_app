class TodosController < ApplicationController
	def index
		@todo = Todo.all
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to @todo

		else
			# render 'edit'
		end
	end

	def show
		@todo = Todo.find(params[:id])
	end

	private

	def todo_params
		params.require(:todo).permit(:title)
	end
	
end
