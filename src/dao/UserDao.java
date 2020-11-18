package dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import bean.User;
import util.C3P0Utils;

public class UserDao {
		public User getUser(String name,String password) throws SQLException{
			QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
			String sql = "select * from user where username= ? and password = ?";
			User user = qr.query(sql, new BeanHandler<User>(User.class),name,password);		
			return user;
		}
		
		public int addUser(User user){
			//操作数据库
			QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
			try {
				return runner.update("insert into user(username,password,email,age)values(?,?,?,?);",
						user.getUsername(),user.getPassword(),user.getEmail(),user.getPhone());
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}

		}
}
