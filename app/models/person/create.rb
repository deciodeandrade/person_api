class Person::Create
  def self.call(person_params)
    person = Person.create(person_params)

    [person.persisted?, person]
  end
end
