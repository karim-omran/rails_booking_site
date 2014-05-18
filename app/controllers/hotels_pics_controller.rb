class HotelsPicsController < ApplicationController
  # GET /hotels_pics
  # GET /hotels_pics.json
  def index
    @hotels_pics = HotelsPic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hotels_pics }
    end
  end

  # GET /hotels_pics/1
  # GET /hotels_pics/1.json
  def show
    @hotels_pic = HotelsPic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hotels_pic }
    end
  end

  # GET /hotels_pics/new
  # GET /hotels_pics/new.json
  def new
    @hotels_pic = HotelsPic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hotels_pic }
    end
  end

  # GET /hotels_pics/1/edit
  def edit
    @hotels_pic = HotelsPic.find(params[:id])
  end

  # POST /hotels_pics
  # POST /hotels_pics.json
  def create
    @hotels_pic = HotelsPic.new(params[:hotels_pic])

    respond_to do |format|
      if @hotels_pic.save
        format.html { redirect_to @hotels_pic, notice: 'Hotels pic was successfully created.' }
        format.json { render json: @hotels_pic, status: :created, location: @hotels_pic }
      else
        format.html { render action: "new" }
        format.json { render json: @hotels_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hotels_pics/1
  # PUT /hotels_pics/1.json
  def update
    @hotels_pic = HotelsPic.find(params[:id])

    respond_to do |format|
      if @hotels_pic.update_attributes(params[:hotels_pic])
        format.html { redirect_to @hotels_pic, notice: 'Hotels pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hotels_pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels_pics/1
  # DELETE /hotels_pics/1.json
  def destroy
    @hotels_pic = HotelsPic.find(params[:id])
    @hotels_pic.destroy

    respond_to do |format|
      format.html { redirect_to hotels_pics_url }
      format.json { head :no_content }
    end
  end
end
