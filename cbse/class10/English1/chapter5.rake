
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Lima o Flaherty & Frederick Forsyth', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Two Stories about Flying", audio_link: 'chapter1.mp3')
        sections = ['THE young seagull was alone on his ledge. His two brothers and his sister had already flown away the day before. He had been afraid to fly with them. Somehow when he had taken a little run forward to the brink of the ledge and attempted to flap his wings he became afraid. The great expanse of sea stretched down beneath, and it was such a long way down — miles down. He felt certain that his wings would never support him; so he bent his head and ran away back to the little hole under the ledge where he slept at night. Even when each of his brothers and his little sister, whose wings were far shorter than his own, ran to the brink, flapped their wings, and flew away, he failed to muster up courage to take that plunge which appeared to him so desperate. His father and mother had come around calling to him shrilly, upbraiding him, threatening to let him starve on his ledge unless he flew away.But for the life of him he could not move.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “I’ll take the risk.” What is the risk? Why does the narrator take it?',
                    'Q2:  Describe the narrator’s experience as he flew the aeroplane into the storm.',
                    'Q3:  Why does the narrator say, “I landed and was not sorry to walk away from the old Dakota…”?',
                    'Q4:  What made the woman in the control centre look at the narrator strangely?',
                    'Q5:  Who do you think helped the narrator to reach safely? Discuss this among yourselves and give reasons for your answer.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
