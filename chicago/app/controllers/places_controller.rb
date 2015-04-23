class PlacesController < ApplicationController
    def index
        @places = Place.all
        @places.each do |place|
            place.admission_price = (place.admission_price.to_f / 100.0).to_s
        end
    end

    def show
        if params["id"] == nil
            render "show"
        end
        @place = Place.find_by(:id => params["id"])
        if @place != nil
            @place.admission_price = (@place.admission_price.to_f / 100.0).to_s
            render "show"
        else
            redirect_to "/", notice: "Place not found."
        end
    end

    def delete
        place = Place.find_by(id: params["id"])
        if place != nil
            puts(place.title)
            place.delete
        end
        redirect_to "/places"
    end

    def new
        render 'new'
    end

    def create
        place = Place.new
        place.title = params["title"]
        place.photo_url = params["photo_url"]
        place.admission_price = (params["price"].to_f * 100).to_i
        place.description = params["description"]
        place.save
        redirect_to "/places"
    end

    def edit
        @place = Place.find_by(:id => params["id"])
        if @place != nil
            @place.admission_price = (@place.admission_price.to_f / 100.0).to_s
            render "edit"
        else
            redirect_to "/", notice: "Place not found."
        end
    end

    def update
        place = Place.find_by(:id => params["id"])
        place.title = params["title"]
        place.photo_url = params["photo_url"]
        place.admission_price = (params["price"].to_f * 100).to_i
        place.description = params["description"]
        place.save
        redirect_to "/places"
    end

end
