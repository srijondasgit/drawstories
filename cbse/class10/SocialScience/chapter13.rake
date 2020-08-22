
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Challenges to Democracy", audio_link: 'chapter1.mp3')
        sections = ['This concluding chapter draws upon all that you have learnt in the last two years so as to address the fundamental questions of democratic politics : What are the challenges that democracy faces in our country and elsewhere? What can be done to reform democratic politics? How can our democracy become more democratic in its practice and outcomes? This chapter does not answer these questions. It only makes some suggestions about the way in which we can approach the questions of challenges and reforms. It invites you to think on your own and come up with your own reading of the challenges, your recipe of how to overcome these and your own definition of democracy.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
