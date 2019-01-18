package net.testbean;

public class Calcbean {
	//절대값
	public int abs(int a) {
		return Math.abs(a);
	}//end
	
	//팩토리얼
	public long fact(int a) {
		return (a==0)?1:a*fact(a-1);
	}//end
}//class end
