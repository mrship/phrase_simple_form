class BasicController < ApplicationController
  def index
    render
  end
  
  def edit
    @basic = Basic.new
    @basic.client_side_override = true
    render
  end
end
