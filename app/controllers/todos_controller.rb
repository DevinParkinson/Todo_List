class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(params[:id])

    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end
end

private

  def todos_params
    params.require(:todo).permit(:title, :body)
  end
