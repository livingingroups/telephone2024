

#' Run telephone game
#'
#' Run one iteration of the telephone game
#'
#' @param word word to pass to the first player
#'
#' @return vector of length n_players + 1, first element is the input word, each subsequent element is a word selected by a player.
#' @export
telephone <- function(word) {
  player_functions <- list(
    brock_function,
    laura_function,
    julia_function,
    marius_function,
    chi_function
  )

  words <- word
  for(player_function in player_functions){
    last_word <- words[length(words)]
    words <- c(words, player_function(last_word))
  }
  return(words)
}
