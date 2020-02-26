akira = Pet.new(name: "Akira", gender: "male", last_fed: "03-23-2020", next_feeding: "03-24-2020")
note = Note.new(title: "Why Akira is a good cat", body: "he is very soft and nice")

akira.notes << note
akira.save