
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'PETER DIXON', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Where Do All the Teachers Go?", 
                     audio_link: 'chapter1.mp3')

        sections = [   'Where do all the teachers go', 
                       'When it’s four o’clock?',
                       'Do they live in houses',
                       'And do they wash their socks?',

                       'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Why does the poet want to know where the teachers go at four o’clock?",
                    "Q2:  What are the things normal people do that the poet talks about?",
                    "Q3:  What does he imagine about (a) where teachers live? (b) what they do at home? (c) the people with whom they live? (d) their activities when they were children in school?",
                    "Q4:  Why does the poet wonder if teachers also do things that other people do?",
                    "Q5:  How does the poet plan to find out? What will he do once he finds out?",
                    "Q6:  What do you think these phrases from the poem mean? (i) punished in the corner (ii) leave their greens",
                                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
