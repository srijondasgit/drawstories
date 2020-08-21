
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Pastoral Nomads and their Movements", audio_link: 'chapter1.mp3')
        sections = ['Even today the Gujjar Bakarwals of Jammu and Kashmir are great herders of goat and sheep. Many of them migrated to this region in the nineteenth century in search of pastures for their animals.Gradually, over the decades, they established themselves in the area,and moved annually between their summer and winter grazing grounds. In winter, when the high mountains were covered with snow, they lived with their herds in the low hills of the Siwalik range. The dry scrub forests here provided pasture for their herds.By the end of April they began their northern march for their summer grazing grounds. Several households came together for this journey,forming what is known as a kafila. They crossed the Pir Panjal passes and entered the valley of Kashmir. With the onset of summer, the snow melted and the mountainsides were lush green. The variety of grasses that sprouted provided rich nutritious forage for the animal herds. By end September the Bakarwals were on the move again, this time on their downward journey, back to their winter base. When the high mountains were covered with snow, the herds were grazed in the low hills.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Explain why nomadic tribes need to move from one place to another.What are the advantages to the environment of this continuous movement?',
                    'Q2:  Discuss why the colonial government in India brought in the following laws. In each case, explain how the law changed the lives of pastoralists:(a) Waste Land rules (b)Forest Acts (c) Criminal Tribes Act (d) Grazing Tax',
                    'Q3:  Give reasons to explain why the Maasai community lost their grazing lands.',
                    'Q4:  There are many similarities in the way in which the modern world forced changes in the lives of pastoral communities in India and East Africa.Write about any two examples of changes which were similar for Indian pastoralists and the Maasai herders.',
                       ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
