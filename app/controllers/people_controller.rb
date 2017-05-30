class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
      @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
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

  private

  def person_params
    params.require(:person).permit(:name, :age, :race, :hair_color)
  end
end
