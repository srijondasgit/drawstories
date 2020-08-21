
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DRAINAGE", audio_link: 'chapter1.mp3')
        sections = ['The term drainage describes the river system of an area. Look at the physical map. You will notice that small streams flowing from different directions come together to form the main river, which ultimately drains into a large water body such as a lake or a sea or an ocean. The area drained by a single river system is called a drainage basin. A closer observation on a map will indicate that any elevated area, such as a mountain or an upland, separates two drainage basins. Such an upland is known as a water divide (Figure 3.1).',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What is meant by a water divide? Give an example.',
                    'Q2:  Which is the largest river basin in India?',
                    'Q3:  Where do the rivers Indus and Ganga have their origin?',
                    'Q4:  Name the two headstreams of the Ganga. Where do they meet to form the Ganga?',
                    'Q5:  Why does the Brahmaputra in its Tibetan part have less silt, despite a longer course?',
                    'Q6:  Which two Peninsular rivers flow through trough?',
                          ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
