
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DEMOCRATIC RIGHTS", audio_link: 'chapter1.mp3')
        sections = ['In the previous two chapters we have looked at two major elements of a democratic government. In Chapter 3 we saw how a democratic government has to be periodically elected by the people in a free and fair manner. In Chapter 4 we learnt that a democracy must be based on institutions that follow certain rules and procedures. These elements are necessary but not sufficient for a democracy. Elections and institutions need to be combined with a third element – enjoyment of rights – to make a government democratic. Even the most properly elected rulers working through the established institutional process must learn not to cross some limits. Citizens’ democratic rights set those limits in a democracy.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Manoj went to a college to apply for admission into an MBA course. The clerk refused to take his application and said “You, the son of a sweeper, wish to be a manager! Has anyone done this job in your community? Go to the municipality office and apply for a sweeper’s position”. Which of Manoj’s fundamental rights are being violated in this instance? Spell these out in a letter from Manoj to the district collector.',
                    'Q2:  When Madhurima went to the property registration office, the exercises Registrar told her, “You can’t write your name as Madhurima Banerjee d/o A. K. Banerjee. You are married, so you must give your husband’s name. Your husband’s surname is Rao. So your name should be changed to Madhurima Rao.” She did not agree. She said “If my husband’s name has not changed after marriage, why should mine?” In your opinion who is right in this dispute? And why?',
                    'Q3:  Thousands of tribals and other forest dwellers gathered at Piparia in Hoshangabad district in Madhya Pradesh to protest against their proposed displacement from the Satpura National Park, Bori Wildlife Sanctuary and Panchmarhi Wildlife Sanctuary. They argue that such a displacement is an attack on their livelihood and beliefs. Government claims that their displacement is essential for the development of the area and for protection of wildlife. Write a petition on behalf of the forest dwellers to the NHRC, a response from the government and a report of the NHRC on this matter.',
                    'Q4:  Draw a web interconnecting different rights discussed in this chapter.For example right to freedom of movement is connected to the freedom of occupation. One reason for this is that freedom of movement enables a person to go to place of work within one’s village or city or to another village, city or state. Similarly this right can be used for pilgrimage, connected with freedom to follow one’s religion. Draw a circle for each right and mark arrows that show connection between or among different rights. For each arrow, give an example that shows the linkage.',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
