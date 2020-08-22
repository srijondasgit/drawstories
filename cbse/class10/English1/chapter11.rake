
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'EI Bsor Ester', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Hundred Dresses-II", audio_link: 'chapter1.mp3')
        sections = ['WHILE the class was circling the room, the monitor from the principal’s office brought Miss Mason a note.Miss Mason read it several times and studied it thoughtfully for a while. Then she clapped her hands.“Attention, class. Everyone back to their seat.” When the shuffling of feet had stopped and the room was still and quiet, Miss Mason said, “I have a letter from Wanda’s father that I want to read to you.”',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why do you think Wanda’s family moved to a different city? Do you think life there was going to be different for their family?',
                    'Q2:  Maddie thought her silence was as bad as Peggy’s teasing. Was she right?',
                    'Q3:  Peggy says, “I never thought she had the sense to know we were making fun of her anyway. I thought she was too dumb. And gee, look how she can draw!” What led Peggy to believe that Wanda was dumb? Did she change her opinion later?',
                    'Q4:  What important decision did Maddie make? Why did she have to think hard to do so?',
                    'Q5:  Why do you think Wanda gave Maddie and Peggy the drawings of the dresses? Why are they surprised?', 
                    'Q6:  Do you think Wanda really thought the girls were teasing her? Why or Why not?',
                        ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
