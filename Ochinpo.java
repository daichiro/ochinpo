import java.util.Random;

public class Ochinpo
{
    public static void main (String[] args)
    {
	String[] str = {"お", "ち", "ん", "ぽ"};
	int rnd = 0;
	int cnt = 0;
	int complete = 0;
	Random makeRnd = new Random();
	
	while (complete < 4) {
	    cnt++;
	    rnd = makeRnd.nextInt(4);
	    System.out.print(str[rnd]);
	    complete = (rnd == complete) ? ++complete : 0;
	}
	
	System.out.print("\n");
	System.out.println(cnt + "回目で完成しました");
	System.exit(0);
    }
}
