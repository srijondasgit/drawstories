
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'E-YEH-SHURE', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Beauty", audio_link: 'chapter1.mp3')

        sections = [ 'Beauty is seen', 
                     'In the sunlight,',
                     'The trees, the birds,',
                     'Corn growing and people working',

                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    "Q1:  Write a paragraph about beauty. Use your own ideas along with the ideas in the poem. (You may discuss your ideas with your partner.)",
                    "Q2:  The poet says, “Beauty is heard in …” Can you hear beauty? Add a sound that you think is beautiful to the sounds the poet thinks are beautiful.The poet, Shelley, said: Heard melodies are sweet,But those unheard are sweeter. What do you think this means? Have you ever ‘heard’ a song in your head, long after the song was sung or played?",
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
