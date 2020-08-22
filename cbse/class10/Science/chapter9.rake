
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Heredity and Evolution?", audio_link: 'chapter1.mp3')
        sections = ['We have seen that reproductive processes give rise to new individuals that are similar, but subtly different. We have discussed how some amount of variation is produced even during asexual reproduction. And the number of successful variations are maximised by the process of sexual reproduction. If we observe a field of sugarcane we find very little variations among the individual plants. But in a number of animals including human beings, which reproduce sexually, quite distinct variations are visible among different individuals. In this chapter, we shall be studying the mechanism by which variations are created and inherited. The long-term consequences of the accumulation of variations are also an interesting point to be considered. We shall be studying this under evolution.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How do Mendel’s experiments show that traits may be dominant or recessive?',
                    'Q2:  How do Mendel’s experiments show that traits are inherited independently?',
                    'Q3:  How is the sex of the child determined in human beings?',
                    'Q4:  How are the areas of study – evolution and classification – interlinked?',
                    'Q5:  What evidence do we have for the origin of life from inanimate matter?',
                    'Q6:  How is the equal genetic contribution of male and female parents ensured in the progeny?',
                    'Q7:  Only variations that confer an advantage to an individual organism will survive in a population. Do you agree with this statement? Why or why not?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
