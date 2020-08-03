
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "HOW THE CAMEL GOT HIS HUMP", audio_link: 'chapter1.mp3')
        sections = ['The clothes which we wear are made of fabrics. Fabrics are made from fibres obtained from natural or artificial sources. Can you name some natural fibres? Fibres are also used for making a large variety of household articles. Make a list of some common articles made from fibres. Try to separate them into those made from natural fibres and those made from artificial fibres. Make entries in Table 3.1.',
                    '',
                    'Why did you label some fibres as artificial?',
                    'You have read in your previous classes that natural fibres like cotton, wool, silk, etc., are obtained from plants or animals. The synthetic fibres, on the other hand, are made by human beings. That is why these are called synthetic or man-made fibres.',
                    '',
                    'Try to recall the uniform pattern found in a necklace of beads joined with the help of a thread [Fig. 3.1(a)]. Or, try to join a number of paper clips together to make a long chain, as in Fig. 3.1 (b). Is there any similarity between the two?',
                    '',
                    'A synthetic fibre is also a chain of small units joined together. Each small unit is actually a chemical substance. Many such small units combine to form a large single unit called a polymer. The word \'polymer\' comes from two Greek words; poly meaning many and mer meaning part/unit. So, a polymer is made of many repeating units.',
                    
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain why some fibres are called synthetic.',
                    'Q2:  Give examples which indicate that nylon fibres are very strong.',
                    'Q3:  Explain why plastic containers are favoured for storing food.',
                    'Q4:  Explain the difference between the thermoplastic and thermosetting plastics.',
                    'Q5:  Rana wants to buy shirts for summer. Should he buy cotton shirts or shirts made from synthetic material? Advise Rana, giving your reason.',
                    'Q6:  Give examples to show that plastics are noncorrosive in nature.',
                    'Q7:  Should the handle and bristles of a tooth brush be made of the same material? Explain your answer.',
                    'Q8:  ‘Avoid plastics as far as possible’. Comment on this advice.',
                    'Q9:  ‘Manufacturing synthetic fibres is actually helping conservation of forests’. Comment.',
                    'Q10:  Describe an activity to show that thermoplastic is a poor conductor of electricity.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
