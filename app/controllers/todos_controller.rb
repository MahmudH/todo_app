class TodosController < ApplicationController

	def index
		@todo = Todo.all
	end

	def new
		@todo = current_user.todos.build
	end

	def create
		@todo = current_user.todos.build(todo_params)
		if @todo.save
			redirect_to @todo

		else
			render 'edit'
		end
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		
	end

	private

	def todo_params
		params.require(:todo).permit(:title)
	end
	
end
