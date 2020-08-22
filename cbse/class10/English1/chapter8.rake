
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ANNE FRANK', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "From the Diary of Anne Frank", audio_link: 'chapter1.mp3')
        sections = ['WRITING in a diary is a really strange experience for someone like me. Not only because I’ve never written anything before, but also because it seems to me that later on neither I nor anyone else will be interested in the musings of a thirteen-year -old schoolgirl. Oh well, it doesn’t matter. I feel like writing, and I have an even greater need to get all kinds of things off my chest.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Was Anne right when she said that the world would not be interested in the musings of a thirteen-year-old girl?',
                    'Q2:  There are some examples of diary or journal entries in the ‘Before You Read’section. Compare these with what Anne writes in her diary. What language  was the diary originally written in? In what way is Anne’s diary different?',
                    'Q3:  Why does Anne need to give a brief sketch about her family? Does she treat ‘Kitty’ as an insider or an outsider',
                    'Q4:  How does Anne feel about her father, her grandmother, Mrs Kuperus and Mr Keesing? What do these tell you about her?',
                    'Q5:  What does Anne write in her first essay?',
                    'Q6:  Anne says teachers are most unpredictable. Is Mr Keesing unpredictable?How?',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
