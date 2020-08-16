
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Women, Caste and Reform", audio_link: 'chapter1.mp3')
        sections = ['Have you ever thought of how children lived about two hundred years ago? Nowadays most girls from middle-class families go to school, and often study with boys. On growing up, many of them go to colleges and universities, and take up jobs after that. They have to be adults before they are legally married, and according to law, they can marry anyone they like, from any caste and community, and widows can remarry too. All women, like all men, can vote and stand for elections. Of course, these rights are not actually enjoyed by all. Poor people have little or no access to education, and in many families, women cannot choose their husbands.',
                    'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How did the knowledge of ancient texts help the reformers promote new laws?',
                    'Q2:  What were the different reasons people had for not sending girls to school?',
                    'Q3:  Why were Christian missionaries attacked by many people in the country? Would some people have supported them too? If so, for what reasons?',
                    'Q4:  In the British period, what new opportunities opened up for people who came from castes that were regarded as “low”?',
                    'Q5:  How did Jyotirao there formers justify their criticism of caste inequality in society? ',
                    'Q6:  Why did Phule dedicate his book Gulamgiri to the American movement to free slaves?',
                    'Q7:  What did Ambedkar want to achieve through the temple entry movement?'
                    'Q8:  Why were Jyotirao Phule and Ramaswamy Naicker critical of the national movement? Did their criticism help the national struggle in any way?'                  
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
