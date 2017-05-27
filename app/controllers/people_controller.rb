class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
      @person = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
  end
end
