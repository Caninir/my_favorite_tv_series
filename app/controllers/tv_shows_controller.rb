class TvShowsController < ApplicationController
  def index
  end
end

class TvShowsController < ApplicationController
    def create
    @tv_show = TvShow.new(tv_show_params)
    @tv_show.save
    redirect_to tv_shows_path 
  end

  private

    def tv_show_params
      params.require(:tv_show).permit(:name, :summary, :release_date, :rating)
    end
end