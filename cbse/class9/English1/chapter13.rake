
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JEROME K. JEROME [an extract from Three Men in a Boat]', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Packing", audio_link: 'chapter1.mp3')
        sections = ['I SAID I’d pack.I rather pride myself on my packing. Packing is one of those many things that I feel I know more about than any other person living. (It surprises me myself, sometimes, how many such things there are.) I impressed the fact upon George and Harris and told them that they had better leave the whole matter entirely to me. They fell into the suggestion with a readiness that had something uncanny about it. George spread himself over the easy-chair, and Harris cocked his legs on the table.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How many characters are there in the narrative? Name them. (Don’t forget the dog!).',
                    'Q2:  Why did the narrator (Jerome) volunteer to do the packing?',
                    'Q3:  How did George and Harris react to this? Did Jerome like their reaction?',
                    'Q4:  What was Jerome’s real intention when he offered to pack?',
                    'Q5:  What did Harris say after the bag was shut and strapped? Why do you think he waited till then to ask?',
                    'Q6:  What “horrible idea” occurred to Jerome a little later?',
                    'Q7:  Where did Jerome finally find the toothbrush?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
