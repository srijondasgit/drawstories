
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ISAAC ASIMOV', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Fun They Had", audio_link: 'chapter1.mp3')
        sections = ['MARGIE even wrote about it that night in her diary.On the page headed 17 May 2157, she wrote, “Today Tommy found a real book!” It was a very old book. Margie’s grandfather once said that when he was a little boy his grandfather,',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How old are Margie and Tommy?',
                    'Q2:  What did Margie write in her diary?',
                    'Q3:  Had Margie ever seen a book before?',
                    'Q4:  What things about the book did she find strange?',
                    'Q5:  What do you think a telebook is?',
                    'Q6:  Where was Margie’s school? Did she have any classmates?',
                    'Q7:  What subjects did Margie and Tommy learn?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
