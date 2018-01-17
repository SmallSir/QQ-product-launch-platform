
/**该类主要用于提供数据库连接对象的工具类
 * 
 */
package com.tencent.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author amdin
 * 2018.1.17 14:25
 */
public class JDBCCONN {
	public static Connection getConn()
	{
		Connection conn = null;//最终用于系统操作数据库关键对象
		String driver ="com.mysql.jdbc.Driver";//数据库连接驱动
		String username = "root";//数据库用户名
		String password = "qiu961030";//数据库密码
		String url="jdbc:mysql://localhost:3306/tencent_oa_db";//访问数据库的连接地址        协议头://host:prot/dbname
		//加载
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			System.out.println("数据库加载驱动时候异常");
			e1.printStackTrace();
		}
		
		//创建连接
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("数据库连接异常");
			e.printStackTrace();
		}
		return conn;
		
	}
}
