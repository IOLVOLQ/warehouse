package service;

import java.sql.SQLException;
import bean.User;
import dao.UserDao;

public class UserService {
	private UserDao dao = new UserDao();
	
   public User login(String username,String password) throws SQLException{
	   return dao.getUser(username, password);
     
   		}
   public int register(User user) throws SQLException{
	   UserDao dao=new UserDao();
	   return dao.addUser(user);
	}
}
