#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main (int argc, char *argv[]) {
  srand((unsigned int) time(0)); // set seed
  int rnd = 0;
  int cnt = 0;
  int complete = 0;

  while (1) {
    cnt++;
    rnd = rand()%4;
    if (rnd == 0)
      printf("お");
    else if (rnd == 1)
      printf("ち");
    else if (rnd == 2)
      printf("ん");
    else // rnd == 3
      printf("ぽ");

    complete = (rnd == complete)? ++complete : 0;

    // if complete==4, ochinpo is complete!
    if (complete == 4)
      break;
  }

  printf("\n");
  printf("%d回目で完成しました\n", cnt);
  return 0;
}
