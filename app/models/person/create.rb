module Person
  class Create
    def self.call(first_name:, last_name:)
      person = Record.create(first_name: first_name, last_name: last_name)

      [person.persisted?, person]
    end
  end
end
