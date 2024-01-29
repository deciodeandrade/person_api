class PeopleController < ApplicationController
  
  def show
    person = Person.find(params[:id])

    render status: 200, json: {id: person.id, name: person.name}
  end
  
  def index
    people = Person.all

    render status: 200, json: people.map{|item| {id: item.id, name: item.name}}
  end

  def create
    person_params = params.require(:person).permit(:first_name, :last_name)

    person = Person.create(person_params)

    status = person.persisted? ? 200 : 422
    json = People::Serializer.new(person).as_json
    
    render status: status, json: json
  end
end
