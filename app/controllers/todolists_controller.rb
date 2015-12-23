class TodolistsController < Matrack::BaseController
  def index
    @task = Task.limit(10)
  end

  def new
  end

  def show
    if params["id"]
      @task = Task.find(params["id"])
    end
  end

  def edit

  end

  def create
    task = Task.new
    title = params["title"]
    start = params["start"]
    if title && start
      if Task.create(title: title, start: start)
        @msg = "Task successfully created"
      end
    end
    @msg = "Task creation failed" unless @msg
    render :new
  end

  def update

  end

  def destroy
    id = params["task_id"]
    @msg = "Task successfully deleted" if Task.destroy(id)
    @msg = "Unable to delete task" unless @msg
    render :index
  end
end