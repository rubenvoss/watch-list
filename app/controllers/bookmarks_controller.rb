class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    # raise
    @list = List.find(params[:list_id])
    # return an HTML form for creating a new photo
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    # if @bookmark.save
    #   redirect_to list_path
    # else

    # end
    # TODO: redirect to
    # @bookmark.list = list

  end

  def destroy
    bookmark = Bookmark.find[params[:id]]
    bookmark.destroy
  end
end
