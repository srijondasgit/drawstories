
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SHEL SILVERSTEIN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Whatif", audio_link: 'chapter1.mp3')
       
        sections = [ 'Last night, while I lay thinking here,', 
                    'Some Whatifs crawled inside my ear',
                    'And pranced and partied all night long',
                    'And sang their same old Whatif song:',
                     
                     'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1: Who is the speaker in the poem?",
                    "Q2: With your partner list out the happenings the speaker is worried about. ",
                    "Q3: Why do you think she/he has these worries? Can you think of ways to get rid of such worries?",
                ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
