
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'JAMES HERRIOT', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "A Triumph of Surgery", audio_link: 'chapter1.mp3')
        sections = ['I WAS really worried about Tricki this time. I had pulled up my car when I saw him in the street with his mistress and I was shocked at his appearance. He had become hugely fat, like a bloated sausage with a leg at each corner. His eyes, bloodshot and rheumy, stared straight ahead and his tongue lolled from his jaws.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  What kind of a person do you think the narrator, a veterinary surgeon, is? Would you say he is tactful as well as full of common sense?',
                    'Q2:  Do you think Tricki was happy to go home? What do you think will happen now?',
                    'Q3:  Do you think this is a real-life episode, or mere fiction? Or is it a mixture of both?',
                    'Q4:  This episode describes the silly behaviour of a rich woman who is foolishly indulgent, perhaps because she is lonely. Do you think such people are merely silly, or can their actions cause harm to others?',
                    'Q5:  Do you think there are also parents like Mrs Pumphrey?',
                     ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
