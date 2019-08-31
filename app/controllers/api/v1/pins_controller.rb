class Api::V1::PinsController < ApplicationController

    def index 
        pins = Pin.all 
        render json: PinSerializer.new(pins).to_serialized_json
    end

    def create
        pin = Pin.new(pin_params)
        if pin.save!
            render json: pin_params
        else
            render :new 
        end
    end

    def destroy
        pin = Pin.find(params[:id])
        pin.delete
    end

    private 

    def pin_params
        params.permit(:name, :description, :url)
    end

end
