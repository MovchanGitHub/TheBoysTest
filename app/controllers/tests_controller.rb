class TestsController < ApplicationController
    def index
        if params[:search]
          @tests = Test.where('name LIKE ?', "%#{params[:search]}%")
        else
          @tests = Test.all
        end
    end
end