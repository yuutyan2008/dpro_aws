class TasksController < ApplicationController
  private

  def task_params
    params.require(:task).permit(:title, :content, :image)
  end
end
