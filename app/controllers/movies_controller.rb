class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new params[:movie]

    if @movie.save
      flash[:notice] = 'The movie was successfully added.'
      redirect_to @movie
    else
      render :new
    end
  end

  def show
    @movie = Movie.find params[:id]
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]

    if @movie.update_attributes params[:movie]
      flash[:notice] = 'The movie was successfully updated.'
      redirect_to movies_path
    else
      render :edit
    end
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "The movie was successfully deleted."
    redirect_to movies_url
  end




end
