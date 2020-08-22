
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "MONEY AND CREDIT", audio_link: 'chapter1.mp3')
        sections = ['Money is a fascinating subject and full of curiosities. It is important to capture this element for the students. The history of money and how various forms were used at different times is an interesting story. At this stage the purpose is to allow students to realise the social situation in which these forms were used. Modern forms of money are linked to the banking system. This is the central idea of the first part of the chapter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  In situations with high risks, credit might create further problems for the borrower.Explain.',
                    'Q2:  How does money solve the problem of double coincidence of wants? Explain with an example of your own.',
                    'Q3:  How do banks mediate between those who have surplus money and those who need money?',
                    'Q4:  Look at a 10 rupee note. What is written on top? Can you explain this statement?',
                    'Q5:  Why do we need to expand formal sources of credit in India?',
                    'Q6:  What is the basic idea behind the SHGs for the poor? Explain in your own words.',
                    'Q7:  What are the reasons why the banks might not be willing to lend to certain borrowers?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
