#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main (int argc, char *argv[]) {
  srand((unsigned int) time(0)); // set seed
  int rnd = 0;
  int cnt = 0;
  int complete = 0;
  char *str[4] = {"お", "ち", "ん", "ぽ"};

  while (complete < 4) { // if complete==4, ochinpo is collect!
    cnt++;
    rnd = rand()%4;
    printf("%s", str[rnd]);
    complete = (rnd == complete)? ++complete : 0;
  }

  printf("\n");
  printf("%d回目で完成しました\n", cnt);
  return 0;
}
