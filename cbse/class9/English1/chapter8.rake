
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'WILLIAM BUTLER YEATS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Lake Isle of Innisfree", audio_link: 'chapter1.mp3')
        sections = ['I will arise and go now, and go to Innisfree,',
                    'And a small cabin build there, of clay and wattles made:',
                    'Nine bean-rows will I have there, a hive for the honeybee,',
                    'And live alone in the bee-loud glade.',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What kind of place is Innisfree? Think about: (i) the three things the poet wants to do when he goes back there (stanza I);(ii) what he hears and sees there and its effect on him (stanza II); (iii) what he hears in his “heart’s core” even when he is far away from Innisfree (stanza III).',
                    'Q2:  By now you may have concluded that Innisfree is a simple, natural place,full of beauty and peace. How does the poet contrast it with where he now stands? (Read stanza III.)',
                    'Q3:  Do you think Innisfree is only a place, or a state of mind? Does the poet actually miss the place of his boyhood days?',
                                     
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
