laura_function <- function(word){
  #change first vowel
  vowels <- c("a","e","i","o","u")
  word_sep <- unlist(strsplit(word, split="")) #split into ind. letter
  vow <- word_sep %in% vowels # is a vowel?
  randvow <- sample(vowels, 1) #pick a random vowel
  word_sep[vow][1]<- randvow  #replace first vowel with random vowel
  a <- paste(x, collapse = "") #put word back together

  #search for pattern in all words
  x <- unlist(strsplit(a, split=""))
  if (length(x)>2){ #if the word is longer than 2 letters
  y <- x[1:3] # take first three letters
  y2 <- paste(y, collapse = "")
  z<- grep(y2, all_english_words) #search for those letters in the dictionary
  word <- sample(all_english_words[z],1) #choose random word
  }

  else{ #for when word is only 1 or 2 letters long
  y <- x[1:length(x)]
  y2 <- paste(y, collapse = "")
  z<- grep(y2, all_english_words)
  word <- sample(all_english_words[z],1)}

  return(word)
}
