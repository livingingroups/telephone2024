chi_function <- function(word){
  input_word<-which(all_english_words==word)
  similar_word<-all_english_words[input_word-1]

  if (length(similar_word)>0)
  return(similar_word)


  else if (length(input_word)==0)
  return(substr(word, 1,4))
         }

