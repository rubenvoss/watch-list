class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    # raise
    @list = List.find(params[:list_id])
    # return an HTML form for creating a new photo
  end



  def create
    # @movie = Movie.find(bookmark_params["movie_id"])
    @list = List.find(params[:list_id])

    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
    # TODO: redirect to
    # @bookmark.list = list
    # raise
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    @list = bookmark.list
    bookmark.destroy
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
