/**这个主要是用于用户信息表的持久化操作类，主要包含：检索、更新、插入、删除等业务功能
 * 
 */
package com.tencent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tencent.util.JDBCConn;

public class UserInfoDao {

	public static int month=3;
	
	public static Connection getConn(){
		return JDBCConn.getConn();
	}
	
	
	/**用于用户登录的业务方法
	 * @param username用户名
	 * @param password密码
	 * @return成功状态 0表示失败，1表示成功
	 */
	public int  UserLoginBy(String username,String password){
		int rint = 0;//0表示没有查到数据，大于0表示有查询到数据
		PreparedStatement pst = null;//事务对象
		Connection conn = getConn();//获得连接对象
		
		String sql = "select id from userinfo_tb";
		
		//发起事务
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}

		//执行事务
		ResultSet rs = null;
		try {
			rs = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//返回结果
		
		try {
			if(rs.next()){
				//如果可以向下滚，说明有数据
				rint = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
		}		
		return rint;
	}
}
