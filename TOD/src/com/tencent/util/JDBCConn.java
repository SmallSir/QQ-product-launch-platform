/**该类主要是用于提供数据库连接对象的工具类
 * 
 */
package com.tencent.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class JDBCConn {

	public static Connection getConn(){
		Connection conn = null;//最终用于系统操作数据库关键对象
		
		String driver = "com.mysql.jdbc.Driver";//连接驱动
		String username = "root";//数据库用户名
		String password = "123456";//数据库密码
		String url = "jdbc:mysql://localhost:3306/oa";//访问数据库的连接地址
		
		//加载驱动
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：数据库加载驱动时异常");
			e.printStackTrace();
		}
		
		
		//创建链接
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：数据库创建连接时异常");
			e.printStackTrace();
		}
		
		
		return conn;
		
	}
}
