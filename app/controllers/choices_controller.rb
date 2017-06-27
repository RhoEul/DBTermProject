class ChoicesController < ApplicationController
  before_action :authenticate_user!

  def vote
    @choice = Choice.find(params[:choice].to_i)
    @list = List.find(params[:list_id])
    @list.choices.each do |choice|
      choice.users.delete(current_user)
    end
    @choice.users << current_user
    if @choice.save
      flash[:success] = "#{@choice.name}에 투표했습니다!"
    else
      flash[:failure] = "투표에 실패했습니다. 잠시 후 다시 시도해주세요"
    end

    redirect_to :back
  end

end
