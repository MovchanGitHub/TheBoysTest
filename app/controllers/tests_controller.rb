class TestsController < ApplicationController
  def index
    @tests = Test.all
  
    if params[:search].present? && params[:tag].present?
      @tests = Test.tagged_with(params[:tag]).where('name LIKE ?', "%#{params[:search]}%")
    elsif params[:tag].present?
      @tests = Test.tagged_with(params[:tag])
    elsif params[:search].present?
      @tests = @tests.where('name LIKE ?', "%#{params[:search]}%")
    end
  end

  def new
    @tag = Tag.all
    @test = Test.new
  end

  def create
    Test.create(test_params)
    flash[:notice] = 'Test was successfully created.'
    redirect_to '/tests'
  end
end

def test_params
  params.require(:test).permit(:name, :code_word, :description)
end
