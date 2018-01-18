
/**
 *只要用于用户信息表的持久化操作类，主要包含:检索，更新，插入，删除等业务功能 
 */
package com.tencent.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.PreparedStatement;
import com.tencent.util.JDBCCONN;

/**
 * @author amdin
 *2018.1.17 14：41
 */
public class Userinfodao {
	public static Connection getConn()
	{
		return JDBCCONN.getConn();
	}
	/**用于用户登录的业务方法
	 * @param username
	 * @param password
	 * @return成功状态 0表示失败，1表示成功
	 */
	public int UserLoginBy(String username,String password)
	{
		int rint = 0;
		//事物对象
		PreparedStatement pst = null;
		Connection conn = getConn();//获得连机语句
		String sql = "select * from usersinfo_tb where usename = ? and usepass = ?";
		//发起事务
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库查询存在问题");
			e.printStackTrace();
		}
		
		//执行事务
		ResultSet rs = null;
		try {
			rs = pst.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库执行失败");
			e.printStackTrace();
		}
		//返回结果
		try {
			if(rs.next())
			{
				rint = 1 ;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("访问失败");
			e.printStackTrace();
		}
		return rint;
	}
}
