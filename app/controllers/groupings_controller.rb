class GroupingsController < ApplicationController
  before_action :set_puzzle_and_grouping, only: %i[ show edit update destroy ]

  # GET /groupings or /groupings.json
  def index
    @groupings = Grouping.all
  end

  # GET /groupings/1 or /groupings/1.json
  def show
  end

  # GET /groupings/new
  def new
    @grouping = Grouping.new
  end

  # GET /groupings/1/edit
  def edit
  end

  # POST /groupings or /groupings.json
  def create
    @grouping = Grouping.new(grouping_params)

    respond_to do |format|
      if @grouping.save
        format.html { redirect_to [@puzzle, @grouping], notice: "Grouping was successfully created." }
        format.json { render :show, status: :created, location: @grouping }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @grouping.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /groupings/1 or /groupings/1.json
  def update
    respond_to do |format|
      if @grouping.update(grouping_params)
        format.html { redirect_to @puzzle, notice: "Grouping was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @grouping }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @grouping.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /groupings/1 or /groupings/1.json
  def destroy
    @grouping.destroy!

    respond_to do |format|
      format.html { redirect_to puzzle_groupings_path, notice: "Grouping was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puzzle_and_grouping
      @puzzle = Puzzle.find(params.expect(:puzzle_id))
      @grouping = Grouping.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def grouping_params
      params.expect(grouping: [ :puzzle_id, :common_thread, :word_1, :word_2, :word_3, :word_4, :color ])
    end
end
