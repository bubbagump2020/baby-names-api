class BabiesController < ApplicationController
    def index
        babies = Baby.all
        render json: babies
    end

    def show
        baby = Baby.find_by_id(params[:id])
        render json: baby
    end

    def create
        baby = Baby.new(baby_params)
        if baby.save
            render json: { status: :created, baby: baby}
        else
            print baby.errors.full_messages
            render json: { messages: baby.errors.full_messages, success: false }
        end
    end

    def update
        baby = Baby.find_by_id(params[:id])
        if baby.update(baby_params)
            render json: baby
        else
            render json: { messages: baby.errors.full_messages}
        end
    end

    private

    def baby_params
        params.require(:baby).permit(:list_id, :baby_name, :enabled)
    end
end
