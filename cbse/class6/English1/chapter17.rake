
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'RABINDRANATH TAGORE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Vocation", 
                      audio_link: 'chapter1.mp3')
       
                       sections = [ 'When the gong sounds ten in the morning and I walk to school by our lane,', 
                                   'Every day I meet the hawker crying, “Bangles, crystal bangles!”',
                                   'There is nothing to hurry him on, there is no road he must take, no place he must go to, no time when he must come home.',
                                   'wish I were a hawker, spending my day in the road, crying, “Bangles, crystal bangles!”',
                     
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Who is the speaker in the poem? Who are the people the speaker meets? What are they doing? ",
                    "Q2: What wishes does the child in the poem make? Why does the child want to be a hawker, a gardener, or a watchman? Pick out the lines in each stanza, which tell us this. ",
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
