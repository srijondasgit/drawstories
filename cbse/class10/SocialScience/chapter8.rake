
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Democracy and Diversity", audio_link: 'chapter1.mp3')
        sections = ['In the last chapter, we saw how power can be distributed to accommodate linguistic and regional diversities. But language and region are not the only features that give a distinct identity to people. Sometimes, people also identify themselves and relate with others on the basis of their physical appearance, class, religion, gender, caste, tribe, etc. In this chapter, we study how democracy responds to social differences, divisions and inequalities. We begin with an example of public expression of social divisions. We then draw some general lessons about how social differences can take various forms. We then turn to how democratic politics affects and is affected by these social diversities.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Discuss three factors that determine the outcomes of politics of social divisions.',
                    'Q2:  When does a social difference become a social division?',
                    'Q3:  How do social divisions affect politics? Give two examples.',
                    'Q4:  ________________ social differences create possibilities of deep social divisions and tensions. ___________________ social differences do not usually lead to conflicts.',
                    'Q5:  Read the following passage from a famous speech by Martin Luther King Jr. in 1963. Which social division is he talking about? What are his aspirations and anxieties? Do you see a relationship between this speech and the incident in Mexico Olympics mentioned in this chapter?',
                   ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
