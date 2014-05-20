class HotelsController < ApplicationController
  # GET /hotels
  # GET /hotels.json
  def index
    @hotels = Hotel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotels }
    end
  end

  # GET /hotels/1
  # GET /hotels/1.json
  def show
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/new
  # GET /hotels/new.json
  def new
    @hotel = Hotel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotel }
    end
  end

  # GET /hotels/1/edit
  def edit
    @hotel = Hotel.find(params[:id])
  end

  # POST /hotels
  # POST /hotels.json
  def create
    @hotel = Hotel.new(params[:hotel])

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to @hotel, notice: 'Hotel was successfully created.' }
        format.json { render json: @hotel, status: :created, location: @hotel }
      else
        format.html { render action: "new" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.json
  def update
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      if @hotel.update_attributes(params[:hotel])
        format.html { redirect_to @hotel, notice: 'Hotel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.json
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to hotels_url }
      format.json { head :no_content }
    end
  end
  def search
  	
  	respond_to do |format|
      format.html  #search.html.erb
      format.json { render json: @hotel }
      
    end
  end
  def list
      h_name = params[:h_name]
  		h_city = params[:h_city]
  		h_country = params[:h_country]
  		
 
  		$h_from = Date.civil(params[:h_formdate][:"start(1i)"].to_i,params[:h_formdate][:"start(2i)"].to_i,params[:h_formdate][:"start(3i)"].to_i)
  		$h_to = Date.civil(params[:h_todate][:"end(1i)"].to_i,params[:h_todate][:"end(2i)"].to_i,params[:h_todate][:"end(3i)"].to_i)
  		@avil_room_list=Room.getrooms(h_name,h_city,h_country,$h_from,$h_to)
  		
  		
    end
end
