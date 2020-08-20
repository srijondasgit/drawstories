
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'R.K. LAXMAN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Iswaran the Storyteller", audio_link: 'chapter1.mp3')
        sections = ['THE story was narrated to Ganesh by a young man, Mahendra by name. He was a junior supervisor in a firm which offered on hire supervisors at various types of construction sites: factories, bridges, dams, and so on. Mahendra’s job was to keep an eye on the activities at the work site. He had to keep moving from place to place every now and then as ordered by his head office: from a coal mining area to a railway bridge construction site, from there after a few months to a chemical plant which was coming up somewhere.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  In what way is Iswaran an asset to Mahendra?',
                    'Q2:  How does Iswaran describe the uprooted tree on the highway? What effect does he want to create in his listeners?',
                    'Q3:  How does he narrate the story of the tusker? Does it appear to be plausible?',
                    'Q4:  Why does the author say that Iswaran seemed to more than make up for the absence of a TV in Mahendra’s living quarters?',
                    'Q5:  Mahendra calls ghosts or spirits a figment of the imagination.What happens to him on a full-moon night?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
