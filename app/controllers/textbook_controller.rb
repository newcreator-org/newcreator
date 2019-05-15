class TextbookController < ApplicationController
  def index
    @textbooks = Textbook.all
  end

  def show
    @textbook = Textbook.find_by(id: params[:id])
  end
end
