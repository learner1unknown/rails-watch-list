class ListsController < ApplicationController
  before_action :set_list, only: %i[show create]


  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(task_params)
    @list.save
    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
