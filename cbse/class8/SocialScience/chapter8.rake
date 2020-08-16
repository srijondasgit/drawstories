
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Civilising the “Native”, Educating the Nation", audio_link: 'chapter1.mp3')
        sections = ['In the earlier chapters you have seen how British rule affected rajas and nawabs, peasants and tribals. In this chapter we will try and understand what implication it had for the lives of students. For, the British in India wanted not only territorial conquest and control over revenues. They also felt that they had a cultural mission: they had to “civilise the natives”, change their customs and values. What changes were to be introduced? How were Indians to be educated, “civilised”, and made into what the British believed were “good subjects”? The British could find no simple answers to these questions. They continued to be debated for many decades.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Why did William Jones feel the need to study Indian history, philosophy and law?',
                    'Q2:  Why did James Mill and Thomas Macaulay think that European education was essential in India?',
                    'Q3:  Why did Mahatma Gandhi want to teach children handicrafts?',
                    'Q4:  Why did Mahatma Gandhi think that English education had enslaved Indians?',
                    'Q5:  Find out from your grandparents about what they studied in school.',
                    'Q6:  Findoutaboutthehistoryofyourschooloranyother school in the area you live.', 
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
