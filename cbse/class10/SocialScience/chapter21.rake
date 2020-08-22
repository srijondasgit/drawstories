
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "DEVELOPMENT", audio_link: 'chapter1.mp3')
        sections = ['The idea of development or progress has always been with us. We have aspirations or desires about what we would like to do and how we would like to live. Similarly, we have ideas about what a country should be like.What are the essential things that we require? Can life be better for all? How should people live together? Can there be more equality? Development involves thinking about these questions and about the ways in which we can work towards achieving these goals. This is a complex task and in this chapter we shall make a beginning at understanding development. You will learn more about these issues in greater depth in higher classes. Also, you will find answers to many of these questions not just in economics but also in your course in history and political science.This is because the way we live today is influenced by the past. We can’t desire for change without being aware of this. In the same way, it is only through a democratic political process that these hopes and possibilities can be achieved in real life.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do different persons have different notions of development? Which of the following explanations is more important and why? (a) Because people are different. (b) Because life situations of persons are different.',
                    'Q2:  Do the following two statements mean the same? Justify your answer.(a) People have different developmental goals.(b) People have conflicting developmental goals.',
                    'Q3:  Give some examples where factors other than income are important aspects of our lives.',
                    'Q4:  Explain some of the important ideas of the above section in your own words.',
                    'Q5:  Why do you think average income is an important criterion for development? Explain.',
                    'Q6:  Why do you think average income is an important criterion for development? Explain.',
                    'Q7:  Write a paragraph on your notion of what should India do, or achieve, to become a developed country.',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
