class TestsController < ApplicationController
  def index
    @tests = Test.all
    if params[:search].present?
      @tests = @tests.where('name LIKE ?', "%#{params[:search]}%")
    end
    @tests = @tests.where(genre_id: params[:genre]) if params[:genre].present?
  end

  def new
    @genres = Genre.all
    @test = Test.new
  end

  def create
    Test.create(test_params)
    flash[:notice] = 'Test was successfully created.'
    redirect_to '/tests'
  end
end

def test_params
  params.require(:test).permit(:name, :code_word, :description, :genre_id)
end
