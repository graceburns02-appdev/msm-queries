class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all

    render({ :template => "movies_template/index.html.erb"})
  end

  def movie_details
    movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({:id => movie_id}).at(0)

    render({ :template => "movies_template/details.html.erb"})
  end

end
