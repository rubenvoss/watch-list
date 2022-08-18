class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def destroy
    bookmark = Bookmark.find[params[:id]]
    bookmark.destroy
  end
end
