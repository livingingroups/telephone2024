laura_function <- function(word){
  #change first vowel
  vowels <- c("a","e","i","o","u")
  word_sep <- unlist(strsplit(word, split="")) #split into ind. letter
  vow <- word_sep %in% vowels # is a vowel?
  randvow <- sample(vowels, 1) #pick a random vowel
  word_sep[vow][1]<- randvow  #replace first vowel with random vowel
  a <- paste(word_sep, collapse = "") #put word back together

  #search for pattern in all words
  x <- unlist(strsplit(a, split=""))
  if (length(x)>2){ #if the word is longer than 2 letters
  y <- x[1:3] # take first three letters
  y2 <- paste(y, collapse = "")
  z<- grep(y2, all_english_words) #search for those letters in the dictionary
  }

  else{ #for when word is only 1 or 2 letters long
  y <- x[1:length(x)]
  y2 <- paste(y, collapse = "")
  z<- grep(y2, all_english_words)
  }

  if(length(z) > 0){
    # if there are words matching this criteria
    # chose one of those words at random
    word <- sample(all_english_words[z],1)
  } else {
    # else rearrange the letters in the input word
    letters_in_word <- strsplit(word, '')[[1]]
    word <- paste0(sample(letters_in_word, length(letters_in_word)), collapse='')
  }
  return(word)

}

