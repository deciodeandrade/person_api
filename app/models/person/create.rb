class Person::Create
  def self.call(first_name:, last_name:)
    person = Person.create(first_name: first_name, last_name: last_name)

    [person.persisted?, person]
  end
end
