names = ["motivation", "funny", "sports", "love"]
names.each { |name| Category.create(name: name) }

quotes = [
  ["Our greatest glory is not in never falling, but in rising every time we fall.", "Confucius", 1],
  ["All our dreams can come true, if we have the courage to pursue them.", "Walt Disney", 1],
  ["It does not matter how slowly you go as long as you do not stop.", "Confucius", 1],
  ["Do not take life too seriously. You will never get out of it alive.", "Elbert Hubbard", 2],
  ["Happiness is having a large, loving, caring, close-knit family in another city.", "George Burns", 2],
  ["There are only three things women need in life: food, water, and compliments.", "Chris Rock", 2],
  ["Winning isn't everything, it's the only thing.", "Vince Lombardi", 3],
  ["It's lack of faith that makes people afraid of meeting challenges, and I believed in myself.", "Muhammed Ali", 3],
  ["You have to do something in your life that is honorable and not cowardly if you are to live in peace with yourself.", "Larry Brown", 3],
  ["Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.", "Lao Tzu", 4],
  ["There is always some madness in love. But there is also always some reason in madness.", "Friedrich Nietzsche", 4],
  ["Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world.", "Lucille Ball", 4]
]

quotes.each { |quote| Quote.create(blurb: quote[0], contributor: quote[1], category_id: quote[2]) }
