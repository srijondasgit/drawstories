
  desc "TODO"
  task chappter_one: :environment do
    # Chappter.delete_all
    # Book.delete_all
    # Section.delete_all
    # Question.delete_all
    
    book = Book.new(school_id: 1, name: 'Book', author: 'Unnamed', book_type: 'General')

    if book.save

        chappter  =  Chappter.create(book_id: book.try(:id), name: "The treasure within", audio_link: 'chapter1.mp3')
        sections = [
                    'HC: “I used to have this terrible nightmare. Only now, over the last four to five years, it seems to have disappeared.',
                    'BR: What nightmare are you talking about and why do you think it has disappeared now?',
                    'HC: I used to get continuous nightmares about appearing for a maths examination where I did not know anything! Now the psyche must have gotten over it, I don\'t have to think about education and there is absolutely no time to get nightmares.',
                    'BR: Tell us something about your earliest memories in school. HC: In the first and second year I was a good student. After I reached the third standard, I simply lost interest and Inever studied.',
                    'I used to be interested in games, running around, playingjokes and pranks on others. I would copy in class during exam times. I would try to get hold of the examination paper that had been prepared and study it, as I could not remember things that had been taught to me in class.',
                    'However, later, one sentence spoken to me by my Principal changed my life.',
                    'When I approached my eleventh standard, the Principal called me and said, “Look here, Son, I have been seeing you from day one. You are a good student, but you never studied. I have taken care of you till today. Now, I can no longer take care of you so you do it yourself.”He talked to me for five minutes, “You don\'t have your father, your mother has worked so hard to bring you up and paid all your fees all these years but you have only played games. Now you should rise to the occasion and study.”I used to be a very good sportsman. I had been the senior champion for so many years and I also was the cricket captain. I used to play every game, but that year I did not step out onto the field.',
                    'I would go for prayers and all I would do was eat and study. I normally used to copy and pass, but I realised that once I was in SSC, I could not do that.',
                    'When I got a second class, 50 per cent, in my SSC my Principal said, “Son, consider yourself as having got a distinction!” This is my memory of my school days.',
                    'I did lots of other things. See, as far as my things are concerned, I can\'t remember. I forget things very easily. To remember, I have to see things as a photograph. I read abook and I can remember the matter as a photograph but not through my mind. That is how it works.',
                    'BR: When you were in school and you were doing badly, did the teachers pull you up and how did you feel?',
                    'HC: I never felt anythingon being pulled up. I used to be so interested in playing. I would receive a caning every week.',
                    'BR: When you knew that you had incurred the wrath of your teacher by not doing your homework or by behaving badly, when you knew you would get a caning, what was the state of your mind?',
                    'HC: State of mind? Just lift up the hand and they would cane you. It would hurt badly and then I would have to forget about it, because I would want to go and play.',
                    'BR: You never felt insecure or threatened?',
                    'HC: I was just interested in playing and nothing else. I was most inter- ested in funny pranks. One day, I did not want to study, so I created a distraction. For one whole hour we played \'chor police\'.',
                    'Every Saturday we were allowed to go into town to see a movie. So what I would do was have no lunch and collect money from 40 – 50 students, and run and buy the tickets. On my way back, I would eat to my heart\'s content.',
                    'I used to be the leader of a gang. We would have gang fights and plan strategies. These things used to interest me more than any academics.',
                    'Students used to book my textbooks for the following year, because they were almost brand new. I probably opened them one day before exams.',
                    '',
                    'BR: How did you get into the field of architecture?',
                    'HC: In the college for architecture, nobody who had got below 80 – 85 per cent was allowed to enter. I had only 50 per cent. I wanted to join the Army. I got my admission letter but my aunt tore it up. Then I decided that I wanted to join thepolice force.',
                    'My mother said, “Don\'t join the police force, just do yourgraduation!” So I went to Jaihind College in Bombay. There, I was to either take French or German. Though I had studied French for seven years, I did not know seven words of French. So I took German. Then my German teacher died. The college told me that I could change the college or take French. Now, who would give me admission in another college? I had got admission to Jaihind by influence.',
                    'So I thought, \'Okay, I will take French\' and I started learning French again. I learnt it from my cousin. She was an architect\'s wife.',
                    'I was going to an architect\'s office to learn French!BR: Was it then that you decided you wanted to do architecture?',
                    'HC: Actually, it all happened quite by chance.',
                    'In the architect\'s office, I saw somebody drawing a windowdetail. A window detail is a very advanced drawing.',
                    'I told him that his drawing was wrong — that the windowhe had drawn would not open.',
                    'He then had a bet with me and later he found that indeed, hisdrawing was wrong! My cousin\'s husband was surprised. He asked me to draw a few specific things, which I immediately did. He asked me to design a house and I designed a house. After that, he told me to drop everything and join architecture.',
                    'We went to meet the Principal of the college.',
                    'The Principal warned me, “I will allow you to take part in the entrance exams, but if you do not do well I will not allow you to join.”I got an \'A+\' in the entrance exam and from that day it was a cakewalk.',
                    'I had never made a plan, but I knew how something looked like, from the top.',
                    'I had never known what a section was, but I knew if you cut a plan what it would look like.',
                    'I stood first class first throughout, after that.',
                    'I believe that all this understanding came from what I used to play and do during school.',
                    'I had a friend called Behram Divecha. We used to have competitions between us for designing forts, guns and ammunition. Each of us would design something in an effort to be different.',
                    'In school, when I was in the second or third standard, one of my teachers, Mrs Gupta, saw my sketches and told me, “See, you are useless in everything else but your sketches are good. When you grow up you become an architect”. I did not know at the time but she was right. Later, after I became an architect, I went back to meet her and tell her.',
                    'BR: Why do you think you did not like studies? Was it because you felt you could not cope, could not deal with the curriculum?',
                    'HC: I was very bad at languages. Science and geography I could deal with, maths was very bad. I just was not interested. I was studying for the sake of studying. What they taught me today, I would forget after two days. I would not bother because there was no application of mind there, to begin with.',
                    'BR: Did you think that what they taught in school was boring or did you feel that once you understood the concept of what was being taught, you lost interest in the rest of the lesson?',
                    'HC: Living in a boarding school is difficult. We were just living from day to day.',
                    'Nowadays, there are so many tests. Back then, whenever we had tests we used to just copy. The teacher thought that we had done our work.',
                    'BR: There is a contention that giftedness and learning disabilities go hand in hand. Do you think this applies to you?',
                    'HC: Well, take some students from my class. Those who always stood first or second are today doing very ordinary jobs.',
                    'BR: I have come across this situation in so many different places where people tell me that their class toppers are doing very ordinarily today.',
                    'HC: In school, I think living our lives there made us street smart. I have learnt more by doing what I did on my own thanwhat academics would havetaught me.',
                    'BR: That is because thepersonality and skills were there. You were able to find expression in a manner you were comfortable with and you defied every rule so that nobody would stop you from doing what you needed to do.',
                    'HC: I was more interested in otherthings. If, for example, whilein class, it started rainingoutside, I would think of theflowing water and how tobuild a dam to block it. Iwould be thinking about theflow of water within the dam and how much of water the dam would be able to hold. That was my interest for the day.',
                    'When students lost a button while playing or fighting, they would come running to me and I would cut a button for them from chalk, using a blade. Discipline in the school was very important and no student could afford to have a button missing. The student would get past dinner with a full neat uniform and after that it did not matter.',
                    'BR: Coming to the present, how do you decide as to what kind of structure you want to give a client?',
                    'HC: I look at the client\'s face, his clothes, the way he talks and pronounces, the way he eats and I would know what his taste would be like. I can relate to people in a way that would be comfortable. I sketch very spontaneously on a paper on the spot. That paper, I give to my people in the office.',
                    'BR: You do it instinctively?',
                    'HC: Call it instinct, call it arithmetic, whatever. Now it comes to me like mathematics. Putting design, construction, psychology and sociology together and making a sketch from all that is \'mathematics\'.',
                    'Here we almost come to a full circle where Mr Contractor has derived his own interpretation of Mathematics — taking it from a subject he hated to a subject he now loves dealing with!',          
                  ]
      
                  sections.each do |content|
                    Section.create( chappter_id: chappter.id, section_text: content)
                  end


                  questions = [
                    'Q1: What did Hafeez Contractor have nightmares about?',
                    'Q2: What did the Principal say to him, which influenced him deeply?',
                    'Q3: Hafeez Contractor wanted to join the police force. Why didn’t he?',
                    'Q4: In the architect’s office, Hafeez Contractor was advised to drop everything and join architecture. Why?',
                    'Q5: How did he help fellow students who had lost a button?',
                  ]

                  questions.each do |question|
                    Question.create(chappter_id: chappter.id, question: question)
                  end

    end
  end
