class MoviesController < ApplicationController
    def index
        @movies=Movie.all
    end

    def show
        @movie=Movie.find(params[:id])
    end

    def edit
        @movie=Movie.find(params[:id])
    end

    def new
        @movie=Movie.new()
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
          flash[:notice] = "Movie successfully updated!"
          redirect_to @movie
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def create
        @movie = Movie.new(movie_params)
        if  @movie.save
            flash[:notice] = "Movie successfully created!"
            redirect_to movies_url
        else
            render :edit, status: :unprocessable_entity
        end
      end

      def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_url, status: :see_other
      end


    private

    def movie_params
        params.require(:movie).
        permit(:title, :description, :rating, :released_on, :total_gross, :director, :duration, :image_file_name)
    end

end