
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Confronting Marginalisation", audio_link: 'chapter1.mp3')
        sections = ['In the previous chapter, we read about two different groups and their experiences of inequality and discrimination. Though powerless, such groups have fought, protested and struggled against being excluded or dominated by others. They have attempted to overcome their situation by adopting a range of strategies in their long history. Religious solace, armed struggle, self improvement and education, economic uplift – there appears to be no one way of doing things. In all cases, the choice of struggle has depended on the circumstances that the marginalised find themselves in.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  List two Fundamental Rights in the Constitution that Dalits can draw upon to insist that they be treated with dignity and as equals. Re-read the Fundamental Rights listed on page 14 to help you answer this question.',
                    'Q2:  Re-read the story on Rathnam as well as the provisions of the 1989 Scheduled Castes and Scheduled Tribes (Prevention of Atrocities) Act. Now list one reason why you think he used this law to file a complaint.',
                    'Q3:  Why do Adivasi activists, including C.K. Janu, believe that Adivasis can also use this 1989 Act to fight against dispossession? Is there anything specific in the provisions of the Act that allows her to believe this?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
