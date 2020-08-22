
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Periodic Classification of Elements", audio_link: 'chapter1.mp3')
        sections = ['In Class IX we have learnt that matter around us is present in the form of elements, compounds and mixtures and the elements contain atoms of only one type. Do you know how many elements are known till date? At present, 118 elements are known to us. All these have different properties. Out of these 118, only 94 are naturally occurring.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Did Döbereiner’s triads also exist in the columns of Newlands’ Octaves? Compare and find out.?',
                    'Q2:  What were the limitations of Döbereiner’s classification?',
                    'Q3:  What were the limitations of Newlands’ Law of Octaves?',
                    'Q4:  How could the Modern Periodic Table remove various anomalies of Mendeléev’s Periodic Table?',
                    'Q5:  Name two elements you would expect to show chemical reactions similar to magnesium. What is the basis for your choice?',
                    'Q6:  In the Modern Periodic Table, which are the metals among the first ten elements?',
                    ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
