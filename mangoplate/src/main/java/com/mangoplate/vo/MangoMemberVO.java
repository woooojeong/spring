package com.mangoplate.vo;

public class MangoMemberVO {
	//폼에서 넘어오는 데이터 + DB테이블 저장 데이터
		//Field
		int rno;
		String id , pass, name, hp, pnumber, email1,email2,email, addr1, addr2, mdate;
		
		public String getEmail1() {
			return email1;
		}
		public void setEmail1(String email1) {
			this.email1 = email1;
		}
		public String getEmail2() {
			return email2;
		}
		public void setEmail2(String email2) {
			this.email2 = email2;
			setEmail(email1+"@"+email2);
		}
		public int getRno() {
			return rno;
		}
		public void setRno(int rno) {
			this.rno = rno;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPass() {
			return pass;
		}
		public void setPass(String pass) {
			this.pass = pass;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getHp() {
			return hp;
		}
		public void setHp(String hp) {
			this.hp = hp;
		}
		public String getPnumber() {
			return pnumber;
		}
		public void setPnumber(String pnumber) {
			this.pnumber = pnumber;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getAddr1() {
			return addr1;
		}
		public void setAddr1(String addr1) {
			this.addr1 = addr1;
		}
		public String getAddr2() {
			return addr2;
		}
		public void setAddr2(String addr2) {
			this.addr2 = addr2;
		}
		public String getMdate() {
			return mdate;
		}
		public void setMdate(String mdate) {
			this.mdate = mdate;
		}
		
}
