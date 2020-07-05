class BabiesController < ApplicationController
    def index
        babies = Baby.all
        render json: babies
    end

    def create
        baby = Baby.new(baby_params)
        if baby.save
            render json: { baby: baby, success: true}
        else
            render json: { message: 'Baby not made!', success: false }
        end
    end

    private

    def baby_params
        params.require(:baby).permit(:list_id, :baby_name)
    end
end
