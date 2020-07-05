class ListsController < ApplicationController
    def index
        lists = List.all
        render json: lists
    end

    def create
        list = List.new()
        if list.save
            render json: { list_id: list.id, success: true }
        else
            render json: { message: 'List not created', success: false }
        end
    end

    def show
        list = List.find_by(id: params[:id])
        render json: { list: list}
    end
end
