package mybean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import myclass.Sqlconn;

public class St_register implements Action {
	
	String up_userName;
	String up_password;
	String up_phonenum;

	public String getUp_userName() {
		return up_userName;
	}

	public void setUp_userName(String up_userName) {
		this.up_userName = up_userName;
	}

	public String getUp_password() {
		return up_password;
	}

	public void setUp_password(String up_password) {
		this.up_password = up_password;
	}

	public String getUp_phonenum() {
		return up_phonenum;
	}

	public void setUp_phonenum(String up_phonenum) {
		this.up_phonenum = up_phonenum;
	}

	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String u1 = getUp_userName();
		String u2 = getUp_password();
		String u3 = getUp_phonenum();
		String u4 = "”√ªß";
		int m = 0;
		try{
			Connection conn = new Sqlconn().myconn();
			PreparedStatement pstm = conn.prepareStatement("insert into users values(?,?,?,?)");
			pstm.setString(1, u1);
			pstm.setString(2, u2);
			pstm.setString(3, u3);
			pstm.setString(4, u4);
			m = pstm.executeUpdate();
			pstm.close();
			conn.close();
		}catch (Exception e) {
		}
		if(m != 0){
			session.put("userName", u1);
			return "succ";
		}else return "fail";
		
	}

}
