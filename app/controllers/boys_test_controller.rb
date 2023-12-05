# frozen_string_literal: true

class BoysTestController < ApplicationController
  before_action :authenticate_user!, only: :create
  def index

  end
  def create

  end
end
