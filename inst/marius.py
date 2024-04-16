import os
import random

all_english_words = [i.strip() for i in open(os.sep.join((
    # this gives the directory in which the python file is located, i.e. <package>/inst/
    os.path.dirname(__file__),
    "words.txt"
)))]


def combine_words(word):
    # create random number
    number = random.randint(0, len(all_english_words))
    # get a new word from that index
    second_word = all_english_words[number]
    # combine the first half of the original word with the second half of the new word
    combined_word = word[0:int(len(word)/2)] + second_word[int(len(second_word)/2):]

    return combined_word, second_word


def marius_function(word):
    # get a combined word
    combined_word, second_word = combine_words(word)
    # do this until it creates a word that is in the list of all english words
    while combined_word not in all_english_words:
        combined_word, second_word = combine_words(word)

    return combined_word


if __name__ == '__main__':
    sample_inputs = ['smooth', 'squatter', 'xenia']
    print([
        marius_function(word)
        for word in sample_inputs
    ])
