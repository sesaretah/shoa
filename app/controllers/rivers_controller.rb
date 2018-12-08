class RiversController < ApplicationController
  before_action :set_river, only: [:destroy]

  def create
    @river = River.new(river_params)
    @river.user_id = current_user.id
    @river.save
  end

  def destroy
    @river.destroy
  end

  private
  def set_river
    @river = River.find(params[:uuid])
  end

  def river_params
    params.require(:river).permit(:title, :content)
  end
end
