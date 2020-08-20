
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WILLIAM WORDSWORTH', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Slumber Did My Spirit Seal", audio_link: 'chapter1.mp3')
        sections = ['A slumber did my spirit seal—',
                    'I had no human fears.',
                    'She seemed a thing that could not feel',
                    'The touch of earthly years',
                     'No motion has she now, no force—',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: “A slumber did my spirit seal,” says the poet. That is, a deep sleep ‘closed off’ his soul (or mind). How does the poet react to his loved one’s death? Does he feel bitter grief ? Or does he feel a great peace?',
                    'Q2:  The passing of time will no longer affect her, says the poet. Which lines of the poem say this?',
                    'Q3:  How does the poet imagine her to be, after death? Does he think of her as a person living in a very happy state (a ‘heaven’)? Or does he see her now as a part of nature? In which lines of the poem do you find your answer?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
