
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WALT WHITMAN', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Animals", audio_link: 'chapter1.mp3')
        sections = ['I think I could turn and live with animals, they are',
                    'so placid and self-contain’d,',
                    'I stand and look at them long and long.',
                    'They do not sweat and whine about their condition,',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Notice the use of the word ‘turn’ in the first line, “I think I could turn and live with animals…”. What is the poet turning from?',
                    'Q2:  Mention three things that humans do and animals don’t',
                    'Q3:  Do humans kneel to other humans who lived thousands of years ago? Discuss this in groups.',
                    'Q4:  What are the ‘tokens’ that the poet says he may have dropped long ago, and which the animals have kept for him? Discuss this in class. (Hint: Whitman belongs to the Romantic tradition that includes Rousseau and Wordsworth,which holds that civilisation has made humans false to their own true nature.What could be the basic aspects of our nature as living beings that humans choose to ignore or deny?)',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
