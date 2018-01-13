class ListsController < ApplicationController
  before_action :set_list, :only => [:show, :edit, :update, :destroy, :complete]
  
  def index
    @lists = List.all.order(due_date: :desc)
  # 大到小（新到舊）  
  # @lists = List.all.order(due_date: :asc)
  # 小到大（舊到新）
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if 
      @list.save
      redirect_to lists_url
    else
      render :new
    end
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to lists_path(@list)
    else
      render :edit
    end
  end

  def complete
    if @list.completed == false
      @list.update_attribute(:completed, true)
    else
      @list.update_attribute(:completed, false)
    end
    redirect_to lists_path(@list)
  end

  def destroy
    @list.destroy
    redirect_to lists_url
  end


  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:due_date, :name, :note, :image, :completed)

  end
end
