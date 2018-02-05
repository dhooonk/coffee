class OrdersController < ApplicationController
    def index
        @highlight = params[:highlight]
    end
end
