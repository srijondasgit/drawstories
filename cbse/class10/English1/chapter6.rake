
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'CAROLYN WELLS', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "How to Tell Wild Animals", audio_link: 'chapter1.mp3')
        sections = ['If ever you should go by chance',
                    'To jungles in the east;',
                    'And if there should to you advance',
                    'A large and tawny beast,',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Does ‘dyin’ really rhyme with ‘lion’? Can you say it in such a way that it does?',
                    'Q2:  How does the poet suggest that you identify the lion and the tiger? When can you do so, according to him?',
                    'Q3:  Do you think the words ‘lept‘ and ‘lep’ in the third stanza are spelt correctly? Why does the poet spell them like this?',
                    'Q4:  Do you know what a ‘bearhug’ is? It’s a friendly and strong hug — such as bears are thought to give, as they attack you! Again, hyenas are thought to laugh, and crocodiles to weep (‘crocodile tears’) as they swallow their victims.Are there similar expressions and popular ideas about wild animals in your own language(s)?',
                    'Q5:  Look at the line “A novice might nonplus”. How would you write this ‘correctly’? Why is the poet’s ‘incorrect’ line better in the poem?',
                    'Q6:  Can you find other examples of poets taking liberties with language, either in English or in your own language(s)? Can you find examples of humorous poems in your own language(s)?',
                         ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
