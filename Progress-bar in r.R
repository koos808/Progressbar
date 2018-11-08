# R에서 code의 진행표시줄(progress bar)을 표시

# install.packages("progress")
library("progress")

pb <- progress_bar$new(total = 500)

for(i in seq(500)){
  pb$tick()
  Sys.sleep(0.01)
}

#1. progress bar에 대한 사전정보가 담긴 객체 pb 를 만든다.
#2. 사전정보는 iteration max값.
#즉 위의 반복문은 500회를 반복하므로 total 인자에 500을 부여한다.
#객체 pb를 반복문 안에 넣어주고 bar에 표시되도록 tick()함수를 넣어준다.
