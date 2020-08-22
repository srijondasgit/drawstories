
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'SINCLAIR LEWIS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Hack Driver", audio_link: 'chapter1.mp3')
        sections = ['AFTER graduating with honours, I became a junior assistant clerk in a magnificent law firm. I was sent, not to prepare legal briefs, but to serve summons, like a cheap private detective. I had to go to dirty and shadowy corners of the city to seek out my victims. Some of the larger and more self-confident ones even beat me up. I hated this unpleasant work, and the side of city life it revealed to me. I even considered fleeing to my hometown, where I could have been a real lawyer right away, without going through this unpleasant training period.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  When the lawyer reached New Mullion, did ‘Bill’ know that he was looking for Lutkins? When do you think Bill came up with his plan for fooling the lawyer?',
                    'Q2:  Lutkins openly takes the lawyer all over the village. How is it that no one lets out the secret? (Hint: Notice that the hack driver asks the lawyer to keep out of sight behind him when they go into Fritz’s.)Can you find other such subtle ways in which Lutkins manipulates the tour?',
                    'Q3:  Why do you think Lutkins’ neighbours were anxious to meet the lawyer?',
                    'Q4:  After his first day’s experience with the hack driver the lawyer thinks of returning to New Mullion to practise law. Do you think he would have reconsidered this idea after his second visit?',
                    'Q5:  Do you think the lawyer was gullible? How could he have avoided being taken for a ride?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
