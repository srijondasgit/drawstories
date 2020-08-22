
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "SECTORS OF THE INDIAN ECONOMY", audio_link: 'chapter1.mp3')
        sections = ['Let us look at these pictures. You will find that people are engaged in various economic activities. Some of these are activities producing goods. Some others are producing services. These activities are happening around us every minute even as we speak. How do we understand these activities? One way of doing this is to group them (classify them) using some important criterion. These groups are also called sectors.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Complete the above table to show how sectors are dependent on each other.',
                    'Q2:  Explain the difference between primary, secondary and tertiary sectors using examples other than those mentioned in the text.',
                    'Q3:  Students in a school are often classified into primary and secondary or junior and senior. What is the criterion that is used? Do you think this is a useful classification? Discuss.',
                    'Q4:  What does the history of developed countries indicate about the shifts that have taken place between sectors?',
                    'Q5:  Compare and contrast the changes in India with the pattern that was observed for developed countries. What kind of changes between sectors were desired but did not happen in India?',
                    'Q6:  Why should we be worried about underemployment?',
                    'Q7:  Why do you think MGNREGA 2005 is referred to as ‘ Right to work’ ?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
