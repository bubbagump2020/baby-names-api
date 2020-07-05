class BabiesController < ApplicationController
    def index
        babies = Baby.all
        render json: babies
    end

    def create
        baby = Baby.new(baby_params)
        if baby.save
            render status: :created
        else
            print baby.errors.full_messages
            render json: { messages: baby.errors.full_messages, success: false }
        end
    end

    private

    def baby_params
        params.require(:baby).permit(:list_id, :baby_name)
    end
end
