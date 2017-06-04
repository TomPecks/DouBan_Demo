package mybean;

import java.util.Map;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class St_login implements Action {
	String in_userName;
	String in_password;

	public String getIn_password() {
		return in_password;
	}

	public void setIn_password(String in_password) {
		this.in_password = in_password;
	}

	public String getIn_userName() {
		return in_userName;
	}

	public void setIn_userName(String in_userName) {
		this.in_userName = in_userName;
	}

	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String u = getIn_userName();
		session.put("username", u);
		return "succ";
	}

}
