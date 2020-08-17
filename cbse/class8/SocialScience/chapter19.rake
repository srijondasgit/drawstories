
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Understanding Marginalisation", audio_link: 'chapter1.mp3')
        sections = ['To be marginalised is to be forced to occupy the sides or fringes and thus not be at the centre of things. This is something that some of you have probably experienced in the classroom or playground. If you are not like most people in your class, that is, if your taste in music or films is different, if your accent marks you out from others, if you are less chatty than others in your class, if you don’t play the same sport that many of your classmates like, if you dress differently, the chances are that you will not be considered to be ‘in’ by your peers. So, often, you end up feeling that you are ‘not with it’ – as if what you say, feel and think and how you act are not quite right or acceptable to others.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Write in your own words two or more sentences of what you understand by the word ‘marginalisation’.',
                    'Q2:  List two reasons why Adivasis are becoming increasingly marginalised.',
                    'Q3:  Write one reason why you think the Constitution’s safeguards to protect minority communities are very important?',
                    'Q4:  Re-read the section on Minorities and Marginalisation. What do you understand by the term minority?',
                    'Q5:  You are participating in a debate where you have to provide reasons to support the following statement: ‘Muslims are a marginalised community’. Using the data provided in this chapter, list two reasons that you would give.',
                    'Q6:  Imagine that you are watching the Republic Day parade on TV with a friend and she remarks, “Look at these tribals. They look so exotic. And they seem to be dancing all the time”. List three things that you would tell her about the lives of Adivasis in India.',
                    'Q7:  In the storyboard you read about how Helen hopes to make a movie on the Adivasi story. Can you help her by developing a short story on Adivasis?',
                    'Q8:  Would you agree with the statement that economic marginalisation and social marginalisation are interlinked? Why?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
