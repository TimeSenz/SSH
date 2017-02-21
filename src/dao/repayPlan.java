package dao;

import java.sql.Timestamp;

public class repayPlan {
	
		private Integer bidid;
		private Double money;;
		private Timestamp time;
		private String state;
		
		
		public Integer getBidid() {
			return bidid;
		}
		public void setBidid(Integer bidid) {
			this.bidid = bidid;
		}
		public Double getMoney() {
			return money;
		}
		public void setMoney(Double money) {
			this.money = money;
		}
		public Timestamp getTime() {
			return time;
		}
		public void setTime(Timestamp time) {
			this.time = time;
		}
		public String getState() {
			return state;
		}
		public void setState(String state) {
			this.state = state;
		}
		
	
	
}
