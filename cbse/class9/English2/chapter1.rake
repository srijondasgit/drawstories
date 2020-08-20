
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'MULK RAJ ANAND', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Lost Child", audio_link: 'chapter1.mp3')
        sections = ['IT was the festival of spring. From the wintry shades of narrow lanes and alleys emerged a gaily clad humanity. Some walked, some rode on horses, others sat, being carried in bamboo and bullock carts. One little boy ran between his father’s legs, brimming over with life and laughter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What are the things the child sees on his way to the fair? Why does he lag behind?',
                    'Q2:  In the fair he wants many things. What are they? Why does he move on without waiting for an answer?',
                    'Q3:  When does he realise that he has lost his way? How have his anxiety and insecurity been described?',
                    'Q4:  Why does the lost child lose interest in the things that he had wanted earlier?',
                    'Q5:  What do you think happens in the end? Does the child find his parents?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
