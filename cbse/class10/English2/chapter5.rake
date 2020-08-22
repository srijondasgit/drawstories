
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'H.G. WELLS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Footprints without Feet", audio_link: 'chapter1.mp3')
        sections = ['THE two boys started in surprise at the fresh muddy imprints of a pair of bare feet. What was a barefooted man doing on the steps of a house,in the middle of London? And where was the man?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  “Griffin was rather a lawless person.” Comment.',
                    'Q2:  How would you assess Griffin as a scientist?',
                    'Q3:  Are there forces around us that are invisible, for example, magnetism? Are there aspects of matter that are ‘invisible’ or not visible to the naked eye? What would the world be like if you could see such forces or such aspects of matter?',
                    'Q4:  What makes glass or water transparent (what is the scientific explanation for this)? Do you think it would be scientifically possible for a man to become invisible, or transparent? (Keep in mind that writers of science fiction have often turned out to be prophetic in their imagination!)',
                    'Q5:  Would you like to become invisible? What advantages and disadvantages do you foresee, if you did?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
