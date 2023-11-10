class WeightsController < ApplicationController
    def index
    end
    
    def new
        @weight = Weight.new
    end
end
