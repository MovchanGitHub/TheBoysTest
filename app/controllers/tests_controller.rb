class TestsController < ApplicationController
  def index
    @tests = Test.all
    if params[:search].present?
      @tests = @tests.where('name LIKE ?', "%#{params[:search]}%")
    end
    @tests = @tests.where(genre_id: params[:genre]) if params[:genre].present?
  end
end