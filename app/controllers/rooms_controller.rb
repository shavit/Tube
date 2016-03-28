class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def show
    prepare_room
  end

  private

    def prepare_room
      @room = Room.find params[:id]
    end
end
