
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'KATHERINE MANSFIELD', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The Little Girl", audio_link: 'chapter1.mp3')
        sections = ['TO the little girl he was a figure to be feared and avoided. Every morning before going to work he came into her room and gave her a casual kiss, to which she responded with “Goodbye, Father”. And oh, there was a glad sense of relief when she heard the noise of the carriage growing fainter and fainter down the long road! In the evening when he came home she stood near the staircase and heard his loud voice in the hall. “Bring my tea into the drawing-room... Hasn’t the paper come yet? Mother, go and see if my paper’s out there — and bring me my slippers.”',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why was Kezia afraid of her father?',
                    'Q2:  Who were the people in Kezia’s family?',
                    'Q3:  In what ways did Kezia’s grandmother encourage her to get to know her father better?',
                    'Q4:  Kezia’s efforts to please her father resulted in displeasing him very much.How did this happen?',
                    'Q5:  Kezia decides that there are “different kinds of fathers”. What kind of father was Mr Macdonald, and how was he different from Kezia’s father?',
                    'Q6:  How does Kezia begin to see her father as a human being who needs her sympathy?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
