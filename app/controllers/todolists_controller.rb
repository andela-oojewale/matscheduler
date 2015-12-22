class TodolistsController < Matrack::BaseController
  def index
    @task = Task.limit(10)
  end

  def new
  end

  def create
    title = params["title"]
  end

  def update

  end

  def destroy

  end
end