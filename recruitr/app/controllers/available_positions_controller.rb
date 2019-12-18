class AvailablePositionsController < ApplicationController
    def index
      @available_positions = AvailablePosition.all
    end

    def new
        @available_position = AvailablePosition.new
        2.times{ @available_position.skills.build }
    end

    # def add_skill
    #   @available_position.skills.push("");
    # end

    def create
        @available_position = AvailablePosition.new(available_position_params)
        if @available_position.save
          redirect_to available_positions_path, notice: 'Thank you! Your available position was successfully created !'
        else
          render 'new', notice: 'Sorry, something went wrong'
        end
    end

    private
  def available_position_params
    params.require(:available_position).permit(:title, skills_attributes: [:content])
  end
end
