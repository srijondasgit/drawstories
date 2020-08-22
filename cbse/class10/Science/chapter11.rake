
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Human Eye and the Colourful World", audio_link: 'chapter1.mp3')
        sections = ['You have studied in the previous chapter about refraction of light by lenses. You also studied the nature, position and relative size of images formed by lenses. How can these ideas help us in the study of the human eye? The human eye uses light and enables us to see objects around us. It has a lens in its structure. What is the function of the lens in a human eye? How do the lenses used in spectacles correct defects of vision? Let us consider these questions in this chapter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do stars twinkle?',
                    'Q2:  Explain why the planets do not twinkle.',
                    'Q3:  Why does the Sun appear reddish early in the morning?.',
                    'Q4:  Why does the sky appear dark instead of blue to an astronaut?',
                    'Q5:  What happens to the image distance in the eye when we increase the distance of an object from the eye?',
                    'Q6:  Why is a normal eye not able to see clearly the objects placed closer than 25 cm?',
                    'Q7:  Make a diagram to show how hypermetropia is corrected. The near point of a hypermetropic eye is 1 m. What is the power of the lens required to correct this defect? Assume that the near point of the normal eye is 25 cm.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
