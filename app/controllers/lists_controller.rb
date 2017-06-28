class ListsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    choices = params[:choices]
    @choices = []
    choices.each do |c|
      choice = Choice.new
      choice.name = c
      choice.save
      @choices << choice
    end
    @list.choices = @choices
    @list.user = current_user
    @list.save
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
    @comment = Comment.new
  end

  private
  def list_params
    params.require(:list).permit!
  end
end
