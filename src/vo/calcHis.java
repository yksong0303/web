package vo;

public class calcHis {
		private int num;
		private String ops;
		private double result;
		public int getNum() {
			return num;
		}
		public void setNum(int num) {
			this.num = num;
		}
		public String getOps() {
			return ops;
		}
		public void setOps(String ops) {
			this.ops = ops;
		}
		public double getResult() {
			return result;
		}
		public void setResult(double result) {
			this.result = result;
		}
		@Override
		public String toString() {
			return "calcHis [num=" + num + ", ops=" + ops + ", result=" + result + "] =";
		}
		
		

}
