class GameReviewsController < ApplicationController
  before_action :set_game_review, only: [:show, :edit, :update, :destroy]

  # GET /game_reviews
  def index
   # @game_reviews = GameReview.all
    #@game_reviews = GameReview.order(params[:sort])
    if params[:search]
      search_games
    elsif params[:sort] == "name"
      @game_reviews = GameReview.order(params[:sort])
    elsif params[:sort] == "genre"
      @game_reviews = GameReview.all.sort_by{|game_review| game_review.genre}
    else
      @game_reviews = GameReview.all
    end
  end

  def search_games
    if @game_review = GameReview.all.find{|game_review| game_review.name.include?(params[:search])}
      redirect_to game_review_path(@game_review)
    else
      @game_reviews = GameReview.all
    end
  end

  def show
    @game_reviews = GameReview.find(params[:id])
  end

  # GET /game_reviews/new
  def new
    @game_review = GameReview.new
  end

  # GET /game_reviews/1/edit
  def edit
  end

  # POST /game_reviews
  def create
    @game_review = GameReview.new(game_review_params)

    if @game_review.save
      redirect_to @game_review, notice: 'Game review was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /game_reviews/1
  def update
    if @game_review.update(game_review_params)
      redirect_to @game_review, notice: 'Game review was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /game_reviews/1
  def destroy
    @game_review.destroy
    redirect_to game_reviews_url, notice: 'Game review was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_review
      @game_review = GameReview.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_review_params
      params.require(:game_review).permit(:name, :developer, :stars, :genre, :description, :review)
    end
end
