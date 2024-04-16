julia_function <- function(word){
return(sample(all_english_words[which(substr(all_english_words, 1,2)==substr(word,1,2))],1))
}


