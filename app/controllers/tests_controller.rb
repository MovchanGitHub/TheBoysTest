class TestsController < ApplicationController
  def index
    @tests = Test.all
    if params[:search].present?
      @tests = @tests.where('name LIKE ?', "%#{params[:search]}%")
    end
    @tests = @tests.where(genre_id: params[:genre]) if params[:genre].present?
  end

  def create
    test_params = Hash.new
    test_params[:name] = params.require(:name)
    test_params[:code_word] = params.require(:code_word)
    test_params[:description] = params.require(:description)
    test_params[:genre_id] = params.require(:genre_id)
    #test_params[:questions_attributes] = Hash.new

    Test.create(test_params)
    puts "putting"
    flash[:notice] = 'Test was successfully created.'
    redirect_to '/tests'

  end
end
