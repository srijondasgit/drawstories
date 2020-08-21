
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "Nazism and the Rise of Hitler", audio_link: 'chapter1.mp3')
        sections = ['In the spring of 1945, a little eleven-year-old German boy called Helmuth was lying in bed when he overheard his parents discussing something in serious tones. His father, a prominent physician, deliberated with his wife whether the time had come to kill the entire family, or if he should commit suicide alone. His father spoke about his fear of revenge, saying, ‘Now the Allies will do to us what we did to the crippled and Jews.’ The next day, he took Helmuth to the woods, where they spent their last happy time together, singing old children’s songs. Later, Helmuth’s father shot himself in his office. Helmuth remembers that he saw his father’s bloody uniform being burnt in the family fireplace. So traumatised was he by what he had overheard and what had happened, that he reacted by refusing to eat at home for the following nine years! He was afraid that his mother might poison him.',
                          'Please refer your text book for the rest of the course',
                    ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1:  Describe the problems faced by the Weimar Republic.',
                    'Q2:  Discuss why Nazism became popular in Germany by 1930.',
                    'Q3:  What are the peculiar features of Nazi thinking?',
                    'Q4:  Explain why Nazi propaganda was effective in creating a hatred for Jews.',
                    'Q5:  Explain what role women had in Nazi society. Return to Chapter 1 on the French Revolution. Write a paragraph comparing and contrasting the role of women in the two periods.',
                    'Q6:  In what ways did the Nazi state seek to establish total control over its people ?',
                    
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
