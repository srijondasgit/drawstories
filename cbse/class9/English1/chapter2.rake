
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'ROBERT FROST', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Road Not Taken", audio_link: 'chapter1.mp3')
        sections = ['Two roads diverged in a yellow wood,',
                    'And sorry I could not travel both',
                    'And be one traveller, long I stood',
                    'And looked down one as far as I could',
                     'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Where does the traveller find himself? What problem does he face?',
                    'Q2:  What do you think the last two lines of the poem mean? (Looking back, does the poet regret his choice or accept it?',
                    'Q3:  Is there any difference between the two roads as the poet describes them (i) in stanzas two and three? (ii) in the last two lines of the poem?',
                    'Q4:  What do you think the last two lines of the poem mean? (Looking back, does the poet regret his choice or accept it?',
                    'Q5:  Have you ever had to make a difficult choice (or do you think you will have difficult choices to make)? How will you make the choice (for what reasons)?',
                    'Q6:  After you have made a choice do you always think about what might have been, or do you accept the reality?',
                   
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
