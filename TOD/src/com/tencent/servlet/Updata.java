package com.tencent.servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.tencent.dao.DownInfo;
import com.tencent.util.JDBCConn;

public class Updata {
	public static void updatedate(int sourse){
		Connection conn;
		PreparedStatement ps = null;
		String sql = "update down_sourse set down = ? where sourse = ?";
		conn = JDBCConn.getConn();
		int down = DownInfo.getSourseinfo(sourse);
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, down+50);
			ps.setInt(2, sourse);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}
		try {
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
