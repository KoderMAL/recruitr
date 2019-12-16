class AvailablePositionsController < ApplicationController
    def index
    end

    def new
        @available_position = AvailablePosition.new
        2.times { @available_position.skills }
    end

    def create
        @available_position = Person.new(available_position_params)
    end

    private
  def available_position_params
    params.require(:person).permit(:position_title, skills_attributes: [:id, :kind, :street])
  end
end
