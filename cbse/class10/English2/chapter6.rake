
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROBERT W. PETERSON', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Making of a Scientist", audio_link: 'chapter1.mp3')
        sections = ['AT the age of twenty-two, a former ‘scout of the year’ excited the scientific world with a new theory on how cells work. Richard H. Ebright and his college room-mate explained the theory in an article in the Proceedings of the National Academy of Science.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How can one become a scientist, an economist, a historian... ? Does it simply involve reading many books on the subject? Does it involve observing, thinking and doing experiments?',
                    'Q2:  You must have read about cells and DNA in your science books. Discuss Richard Ebright’s work in the light of what you have studied.If you get an opportunity to work like Richard Ebright on projects and experiments, which field would you like to work on and why?',
                    'Q3:  Children everywhere wonder about the world around them.The questions they ask are the beginning of scientific inquiry. Given below are some questions that children in India have asked Professor Yash Pal and Dr Rahul Pal as reported in their book,Discovered Questions (NCERT, 2006). (i) What is DNA fingerprinting? What are its uses? (ii) How do honeybees identify their own honeycombs? (iii) Why does rain fall in drops? Can you answer these questions? You will find Professor Yash Pal’s and Dr Rahul Pal’s answers (as given in Discovered Questions) on page 75.',
                    'Q4: You also must have wondered about certain things around you.Share these questions with your class, and try and answer them',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
