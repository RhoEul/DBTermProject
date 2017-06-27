class RootController < ApplicationController
  def index
    @lists = List.all
  end
end
