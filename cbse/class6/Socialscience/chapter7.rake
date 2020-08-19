 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "NEW QUESTIONS AND IDEAS", audio_link: 'chapter1.mp3')

        sections = ['Siddhartha, also known as Gautama, the founder of Buddhism, was born about 2500 years ago.This was a time of rapid change in the lives of people. As you saw in Chapter 6, some kings in the mahajanapadas were growing more powerful.New cities were developing, and life was changing in the villages as well (see Chapter 10). Many thinkers were trying to understand these changes in society. They also wanted to try and find out the true meaning of life.', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                    "Q1: Describe the ways in which the Buddha tried to spread his message to the people.",
                    "Q2: What were the questions that Upanishadic thinkers wanted to answer?",
                    "Q3: What were the main teachings of the Mahavira?",
                    "Q4: Why do you think Anagha’s mother wanted her to know the story of the Buddha?",
                    "Q5: Do you think it would have been easy for slaves to join the sangha? Give reasons for your answer.",
                 
                           
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
