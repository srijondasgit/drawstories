 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "ASHOKA, THE EMPEROR WHO GAVE UP WAR", audio_link: 'chapter1.mp3')

        sections = ['The lions that we see on our notes and coins have a long history. They were carved in stone, and placed on top of a massive stone pillar at Sarnath (about which you read in Chapter 7).Ashoka was one of the greatest rulers known to history and on his instructions inscriptions were carved on pillars, as well as on rock surfaces. Before we find out what was written in these inscriptions, let us see why his kingdom was called an empire.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                    "Q1: What were the problems that Ashoka wanted to solve by introducing dhamma?",
                    "Q2: What were the means adopted by Ashoka to spread the message of dhamma? ",
                    "Q3: Why do you think slaves and servants were ill-treated? Do you think the orders of the emperor would have improved their condition? Give reasons for your answer.",
                  
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
