library(wordcloud2)
library(jiebaR)

engine<-worker(stop_word = ".../stopwords.txt",encoding = "UTF-8")
segment(".../JackMa.txt",engine)

word <- scan('.../JackMa.segment.2018-11-29_15_38_35.txt', sep='\n',what='',encoding="UTF-8")
word <- qseg[word]
word<-word[nchar(word)>1]
word <- sort(word, decreasing = TRUE)[1:200]
word <- freq(word)

wordcloud2(word)
