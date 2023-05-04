class TodoController < ApplicationController
  def index
    matching_todos = Todo.all
    @list_of_todos = matching_todos.order({:created_at =>:desc})
  end

  def create
    @the_todo = Todo.new
    @the_todo.content = params.fetch("query_content")
    @the_todo.user_id = session.fetch(:user_id)
    @the_todo.save
    redirect_to("/")
  end

  def show
    the_id = params.fetch("path_id")
    @the_todo = Todo.where({:id => the_id})
    render({ :template => "todos/show.html.erb" })
  end

  def update
    @todo = Todo.find(params[:path_id])
    current_stat = params.fetch("query_status")
    @todo.status=current_stat
    @todo.save
    redirect_to("/")
  end

  def destroy
    the_id = params.fetch("path_id")
    the_todo = Todo.where({id: the_id}).at(0)
    the_todo.destroy
    redirect_to("/")
  end
end
