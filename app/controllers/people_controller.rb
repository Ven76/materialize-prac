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

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def edit
  end
end
