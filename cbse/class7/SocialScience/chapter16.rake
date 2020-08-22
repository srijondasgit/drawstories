 desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'author', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Understanding Media", audio_link: 'chapter1.mp3')

        sections = ['What is your favourite TV programme? What do you like listening to on the radio? Which newspaper or magazine do you usually read? Do you surf the internet and what have you found most useful about it? Did you know that there is one word that is often used to collectively refer to the radio, TV, newspapers, Internet and several other forms of communication. This word is ‘media’. In this chapter, you will read more about the media. You will find out what is required to make it work, as well as the ways in which the media affects our daily lives. Can you think of one thing that you have learnt from the media this week?', 
                    'Please refer your text book for the rest of the course',
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [

                    "Q1: In what ways does the media play an important role in a democracy?",
                    "Q2: You have read about the ways in which the media ‘sets the agenda’. What kind of effect does this have in a democracy? Provide two examples to support your point of view.",
                    
                                         
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
