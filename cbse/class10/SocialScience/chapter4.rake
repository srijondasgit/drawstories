
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Age of Industrialisation", audio_link: 'chapter1.mp3')
        sections = ['In 1900, a popular music publisher E.T. Paull produced a music book that had a picture on the cover page announcing the ‘Dawn of the Century’ (Fig. 1). As you can see from the illustration, at the centre of the picture is a goddess-like figure, the angel of progress, bearing the flag of the new century. She is gently perched on a wheel with wings, symbolising time. Her flight is taking her into the future. Floating about, behind her, are the signs of progress: railway, camera, machines, printing press and factory.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [   
                    'Q1:  Explain the following: a) Women workers in Britain attacked the Spinning Jenny. b) In the seventeenth century merchants from towns in Europe began employing  peasants and artisans within the villages. c) The port of Surat declined by the end of the eighteenth century. d) The East India Company appointed gomasthas to supervise weavers in India.',
                    'Q2:  Explain what is meant by proto-industrialisation.',
                    'Q3:  Why did some industrialists in nineteenth-century Europe prefer hand labour over machines?',
                    'Q4:  How did the East India Company procure regular supplies of cotton and silk textiles from Indian weavers?',
                    'Q5:  Imagine that you have been asked to write an article for an encyclopaedia on Britain and the history of cotton. Write your piece using information from the entire chapter.',
                    'Q6:  Why did industrial production in India increase during the First World War?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
