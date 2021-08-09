# frozen_string_literal: true

class MoviesController < ApplicationController
 #Filter
 include Sift
 #------------------------------

  before_action :set_movie, only: %i[show update destroy]

  filter_on :title, type: :scope, internal_name: :by_title 
  filter_on :release_date, type: :date
  filter_on :gender, type: :scope, internal_name: :by_gender 

  sort_on :release_date, type: :date
  sort_on :title, type: :string
  

  # GET /movies
  def index
    @movies = filtrate(Movie.all)

    render json: @movies, each_serializer: MovieSerializer::ListSerializer
  end

  # GET /movies/1
  def show
    render json: @movie, serializer: MovieSerializer::DetailSerializer
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie, 
      serializer: MovieSerializer::DetailSerializer
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie, serializer: MovieSerializer::DetailSerializer
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.require(:movie).permit(:title, :release_date, :rating, :image, :gender_id)
  end
end
