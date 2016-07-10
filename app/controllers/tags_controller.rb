class TagsController < ApplicationController
    def index
        @tag = Tag.all
    end
    
    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        flash.notice = "Tag '#{@tag.name}' destroyed!"

        redirect_to action: "index"
    end
end
