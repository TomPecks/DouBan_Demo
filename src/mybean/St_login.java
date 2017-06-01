package mybean;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class St_login implements Action {
	String userName;
	String password;
	String phoneNum;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String u = getUserName();
		String p = getPassword();
		session.put("userName", u);
		if(u.equals("abc"))
			return "succ";
		else
			return "err";
	}

}
