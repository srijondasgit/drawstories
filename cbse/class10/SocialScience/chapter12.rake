
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Outcomes of Democracy", audio_link: 'chapter1.mp3')
        sections = ['As we begin to wind up our tour of democracy, it is time to move beyond our discussion of specific themes and ask a general set of questions: What does democracy do? Or, what outcomes can we reasonably expect of democracy? Also, does democracy fulfil these expectations in real life? We begin by thinking about how to assess the outcomes of democracy. After some clarity on how to think on this subject, we proceed to look at the expected and actual outcomes of democracy in various respects: quality of government, economic well-being, inequality, social differences and conflict and finally freedom and dignity. Our final verdict – positive but qualified – leads us to think about the challenges to democracy in the next and final chapter.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  How does democracy produce an accountable, responsive and legitimate government?',
                    'Q2:  What are the conditions under which democracies accommodate social diversities?',
                    'Q3:  Give arguments to support or oppose the following assertions:(a) Industrialised countries can afford democracy but the poor need dictatorship to become rich.(b) Democracy can’t reduce inequality of incomes between different citizens.(c) Government in poor countries should spend less on poverty reduction, health, education and spend more on industries and infrastructure.(d) In democracy all citizens have one vote, which means that there is absence of any domination and conflict.',
                      ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
