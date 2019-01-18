package net.sungjuk;

public class SungjukDTO extends Object {
	//Data Transfer Object 데이터 전송 객체
	//Value Object
	//SungjukVO, SungjukDataBean
	//테이블의 칼럼과 1:1 매칭되는 field를 private 접근제어로 선언
	private int sno;
	private String uname;
	private int kor;
	private int eng;
	private int mat;
	private int aver;
	private String addr;
	private String wdate;
	
	//default constructor 기본생성자
	public SungjukDTO() {}
	
	public int getSno() {
		return this.sno;
	}
	
	public void setSno(int sno) {
		this.sno=sno;
	}

	/**
	 * @return the uname
	 */
	public String getUname() {
		return uname;
	}

	/**
	 * @param uname the uname to set
	 */
	public void setUname(String uname) {
		this.uname = uname;
	}

	/**
	 * @return the kor
	 */
	public int getKor() {
		return kor;
	}

	/**
	 * @param kor the kor to set
	 */
	public void setKor(int kor) {
		this.kor = kor;
	}

	/**
	 * @return the eng
	 */
	public int getEng() {
		return eng;
	}

	/**
	 * @param eng the eng to set
	 */
	public void setEng(int eng) {
		this.eng = eng;
	}

	/**
	 * @return the mat
	 */
	public int getMat() {
		return mat;
	}

	/**
	 * @param mat the mat to set
	 */
	public void setMat(int mat) {
		this.mat = mat;
	}

	/**
	 * @return the aver
	 */
	public int getAver() {
		return aver;
	}

	/**
	 * @param aver the aver to set
	 */
	public void setAver(int aver) {
		this.aver = aver;
	}

	/**
	 * @return the addr
	 */
	public String getAddr() {
		return addr;
	}

	/**
	 * @param addr the addr to set
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}

	/**
	 * @return the wdate
	 */
	public String getWdate() {
		return wdate;
	}

	/**
	 * @param wdate the wdate to set
	 */
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "SungjukDTO [sno=" + sno + ", uname=" + uname + ", kor=" + kor + ", eng=" + eng + ", mat=" + mat
				+ ", aver=" + aver + ", addr=" + addr + ", wdate=" + wdate + "]";
	}
	
	
	 
}//class end
