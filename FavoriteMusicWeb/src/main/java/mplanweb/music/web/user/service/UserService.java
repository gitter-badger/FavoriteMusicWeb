package mplanweb.music.web.user.service;

import mplanweb.music.web.user.bean.UserBean;

public interface UserService {
	
	//Login
	public UserBean login(String userid, String passwd);

}
