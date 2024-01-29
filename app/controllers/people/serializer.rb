class People::Serializer
  def initialize(person)
    @person = person
  end

  def as_json
    return person.errors.to_json if person.errors.present?

    {id: person.id, name: person.name}.to_json
  end
  
  private

  attr_accessor :person
end
