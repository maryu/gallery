class PiltsController < ApplicationController
  # GET /pilts
  # GET /pilts.json
  def index
    @pilts = Pilt.order("rating desc").all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pilts }
    end
  end

  # GET /pilts/1
  # GET /pilts/1.json
  def show
    @pilt = Pilt.find(params[:id])
    @comment = @pilt.comments.build
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pilt }
    end
  end

  # GET /pilts/new
  # GET /pilts/new.json
  def new
    @pilt = Pilt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pilt }
    end
  end

  # GET /pilts/1/edit
  def edit
    @pilt = Pilt.find(params[:id])
  end

  # POST /pilts
  # POST /pilts.json
  def create
    @pilt = Pilt.new(params[:pilt])
    @comment = @pilt.comments.build
    respond_to do |format|
      if @pilt.save
        format.html { redirect_to @pilt, notice: 'Pilt was successfully created.' }
        format.json { render json: @pilt, status: :created, location: @pilt }
      else
        format.html { render action: "new" }
        format.json { render json: @pilt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pilts/1
  # PUT /pilts/1.json
  def update
    @pilt = Pilt.find(params[:id])

    respond_to do |format|
      if @pilt.update_attributes(params[:pilt])
        format.html { redirect_to @pilt, notice: 'Pilt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pilt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilts/1
  # DELETE /pilts/1.json
  def destroy
    @pilt = Pilt.find(params[:id])
    @pilt.destroy

    respond_to do |format|
      format.html { redirect_to pilts_url }
      format.json { head :no_content }
    end
  end
end
