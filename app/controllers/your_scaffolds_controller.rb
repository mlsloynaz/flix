class YourScaffoldsController < ApplicationController
  before_action :set_your_scaffold, only: %i[ show edit update destroy ]

  # GET /your_scaffolds or /your_scaffolds.json
  def index
    @your_scaffolds = YourScaffold.all
  end

  # GET /your_scaffolds/1 or /your_scaffolds/1.json
  def show
  end

  # GET /your_scaffolds/new
  def new
    @your_scaffold = YourScaffold.new
  end

  # GET /your_scaffolds/1/edit
  def edit
  end

  # POST /your_scaffolds or /your_scaffolds.json
  def create
    @your_scaffold = YourScaffold.new(your_scaffold_params)

    respond_to do |format|
      if @your_scaffold.save
        format.html { redirect_to your_scaffold_url(@your_scaffold), notice: "Your scaffold was successfully created." }
        format.json { render :show, status: :created, location: @your_scaffold }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @your_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /your_scaffolds/1 or /your_scaffolds/1.json
  def update
    respond_to do |format|
      if @your_scaffold.update(your_scaffold_params)
        format.html { redirect_to your_scaffold_url(@your_scaffold), notice: "Your scaffold was successfully updated." }
        format.json { render :show, status: :ok, location: @your_scaffold }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @your_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /your_scaffolds/1 or /your_scaffolds/1.json
  def destroy
    @your_scaffold.destroy

    respond_to do |format|
      format.html { redirect_to your_scaffolds_url, notice: "Your scaffold was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_your_scaffold
      @your_scaffold = YourScaffold.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def your_scaffold_params
      params.require(:your_scaffold).permit(:mystring)
    end
end
