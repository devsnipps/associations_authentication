class FlitsController < ApplicationController
  before_action :set_flit, only: [:show, :edit, :update, :destroy]

  # GET /flits
  # GET /flits.json
  def index
    @flits = Flit.all
  end

  # GET /flits/1
  # GET /flits/1.json
  def show
  end

  # GET /flits/new
  def new
    @flit = Flit.new
  end

  # GET /flits/1/edit
  def edit
  end

  # POST /flits
  # POST /flits.json
  def create
    @flit = Flit.create(flit_params)

    respond_to do |format|
      if @flit.save
        format.html { redirect_to @flit, notice: 'Flit was successfully created.' }
        format.json { render :show, status: :created, location: @flit }
      else
        format.html { render :new }
        format.json { render json: @flit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flits/1
  # PATCH/PUT /flits/1.json
  def update
    respond_to do |format|
      if @flit.update(flit_params)
        format.html { redirect_to @flit, notice: 'Flit was successfully updated.' }
        format.json { render :show, status: :ok, location: @flit }
      else
        format.html { render :edit }
        format.json { render json: @flit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flits/1
  # DELETE /flits/1.json
  def destroy
    @flit.destroy
    respond_to do |format|
      format.html { redirect_to flits_url, notice: 'Flit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flit
      @flit = Flit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flit_params
      params.require(:flit).permit(:name, destination_ids:[])
    end
end
