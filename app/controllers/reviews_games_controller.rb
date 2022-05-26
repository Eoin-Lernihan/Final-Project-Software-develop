class ReviewsGamesController < ApplicationController
  before_action :set_reviews_game, only: [:show, :edit, :update, :destroy]

  # GET /reviews_games
  def index
    @reviews_games = ReviewsGame.all
  end

  # GET /reviews_games/1
  def show
  end

  # GET /reviews_games/new
  def new
    @reviews_game = ReviewsGame.new
  end

  # GET /reviews_games/1/edit
  def edit
  end

  # POST /reviews_games
  def create
    @reviews_game = ReviewsGame.new(reviews_game_params)

    if @reviews_game.save
      redirect_to @reviews_game, notice: 'Reviews game was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reviews_games/1
  def update
    if @reviews_game.update(reviews_game_params)
      redirect_to @reviews_game, notice: 'Reviews game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reviews_games/1
  def destroy
    @reviews_game.destroy
    redirect_to reviews_games_url, notice: 'Reviews game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reviews_game
      @reviews_game = ReviewsGame.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reviews_game_params
      params.require(:reviews_game).permit(:name, :type, :developer, :description, :review, :stars)
    end
end
