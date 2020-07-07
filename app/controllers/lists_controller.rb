class ListsController < ApplicationController
    def index
        lists = List.all
        render json: lists
    end

    def create
        list = List.new(list_params)
        if list.save
            render json: { list: list, success: true }
        else
            render json: { message: 'List not created', success: false }
        end
    end

    def show
        list = List.find_by(unique_id: list_params[:unique_id])
        render json: { list: list}
    end

    private

    def list_params
        params.permit(:unique_id)
    end
end
