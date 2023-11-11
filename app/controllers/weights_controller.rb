class WeightsController < ApplicationController
    def index
    end
    
    def new
        @weight = Weight.new
    end
    
    def create
      @weight = Weight.new(weight_params)
      
      if @weight.save
        redirect_to weights_path,notice: '体重が記録されました'
      else
        puts @weight.errors.full_messages
        render :new
      end
    end
    
    private
     def weight_params
       params.require(:weight).permit(:weight, :date, :user_id)
     end
end
