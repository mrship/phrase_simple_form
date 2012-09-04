class BasicController < ApplicationController
  def index
    render
  end
  
  def edit
    @basic = Basic.all.first
    render
  end
end
