package com.tarena.web.action.user;

import com.tarena.dao.DAOFactory;
import com.tarena.dao.UserDAO;
import com.tarena.entity.User;
import com.tarena.util.Md5Code;
import com.tarena.web.action.BaseAction;



public class LoginAction extends BaseAction {
	private User user;
	public String execute() throws Exception{
		//TODO 楠岃瘉email鍜屽瘑鐮佹槸鍚︽纭�涓嶆纭繑鍥瀕ogin_form.jsp
		UserDAO dao = DAOFactory.getUserDAO();
		User u = dao.findByEmail(user.getEmail());
		if(u==null || !u.getPassword().equals(Md5Code.createMd5Code(user.getPassword()))){
			request.setAttribute("login_err", "The email or password doesn't match");
			return "login";
		}
		
		//TODO 鏇存柊last_login_time,last_login_ip瀛楁
		u.setLast_login_ip(request.getRemoteAddr());
		u.setLast_login_time(System.currentTimeMillis());
		dao.update(u);
		
		//TODO 灏唘ser淇℃伅鍐欏叆session
		session.put("s_user", u);
		
		//TODO 妫�煡is_email_verify鏄惁涓簍rue,濡傛灉娌℃湁楠岃瘉,杩斿洖鍒皏erify_form.jsp
		if(!u.isEmail_verify()){
			return "verify";
		}
		
		//TODO 璺宠浆鍒�main/main.jsp浜у搧娴忚鐣岄潰
		return "success";
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
