class DietsController < ApplicationController

    def show
        @diet = Diet.find(params[:id])
    end

end
