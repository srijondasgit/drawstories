
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "EVERYDAY LIFE, CULTURE AND POLITICS", audio_link: 'chapter1.mp3')
        sections = ['It is difficult for us to imagine a world without printed matter. We find evidence of print everywhere around us – in books, journals,newspapers, prints of famous paintings, and also in everyday things like theatre programmes, official circulars, calendars, diaries, advertisements, cinema posters at street corners. We read printed literature, see printed images, follow the news through newspapers, and track public debates that appear in print. We take for granted this world of print and often forget that there was a time before print. We may not realise that print itself has a history which has, in fact, shaped our contemporary world. What is this history? When did printed literature begin to circulate? How has it helped create the modern world?',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Give reasons for the following: a) Woodblock print only came to Europe after 1295. b) Martin Luther was in favour of print and spoke out in praise of it. c) The Roman Catholic Church began keeping an Index of Prohibited books from the mid-sixteenth century.d) Gandhi said the fight for Swaraj is a fight for liberty of speech, liberty of the press, and freedom of association.',
                    'Q2:  Write short notes to show what you know about:a) The Gutenberg Press b) Erasmus’s idea of the printed book c) The Vernacular Press Act',
                    'Q3:  What did the spread of print culture in nineteenth century India mean to: a) Women b) The poor c) Reformers',
                    'Q4:  Why did some people in eighteenth century Europe think that print culture would bring enlightenment and end despotism?',
                    'Q5:  Why did some people fear the effect of easily available printed books? Choose one example from Europe and one from India.',
                    'Q6:  What were the effects of the spread of print culture for poor people in nineteenth century India?',
                    'Q7:  Explain how print culture assisted the growth of nationalism in India.',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
