
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "THE FUNDAMENTAL UNIT OF LIFE", audio_link: 'chapter1.mp3')
        sections = ['While examining a thin slice of cork, Robert Hooke saw that the cork resembled the structure of a honeycomb consisting of many little compartments. Cork is a substance which comes from the bark of a tree. This was in the year 1665 when Hooke made this chance observation through a self-designed microscope. Robert Hooke called these boxes cells. Cell is a Latin word for ‘a little room’.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Make a comparison and write down ways in which plant cells are different from animal cells.',
                    'Q2:  How is a prokaryotic cell different from a eukaryotic cell?',
                    'Q3:  What would happen if the plasma membrane ruptures or breaks down?',
                    'Q4:  What would happen to the life of a cell if there was no Golgi apparatus?',
                    'Q5:  Which organelle is known as the powerhouse of the cell? Why?',
                    'Q6:  Where do the lipids and proteins constituting the cell membrane get synthesised?',
                    'Q7: How does an Amoeba obtain its food?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
