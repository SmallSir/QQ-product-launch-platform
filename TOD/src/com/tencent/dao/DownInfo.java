package com.tencent.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tencent.util.JDBCConn;

/*
 * 用于取出数据库中的下载量
 * */
public class DownInfo {
	
	public static int getinfo(int month){
		int result = 0;
		Connection conn;
		PreparedStatement ps = null;
		String sql = "select download from down_month where month = ?";
		conn = JDBCConn.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, month);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}
		
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static int getQQweekinfo(int week){
		int result = 0;
		Connection conn;
		PreparedStatement ps = null;
		String sql = "select downQQ from down_week where week = ?";
		conn = JDBCConn.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, week);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}
		
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.print(result);
		return result;
	}
	
	public static int getTIMweekinfo(int week){
		int result = 0;
		Connection conn;
		PreparedStatement ps = null;
		String sql = "select downTIM from down_week where week = ?";
		conn = JDBCConn.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, week);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}
		
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.print(result);
		return result;
	}
	
	public static int getSourseinfo(int sourse){
		int result = 0;
		Connection conn;
		PreparedStatement ps = null;
		//返回sourse的下载量
		String sql = "select down from down_sourse where sourse = ?";
		conn = JDBCConn.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sourse);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("系统提示：创建SQL事务失败");
			e.printStackTrace();
		}
		
		ResultSet rs = null;
		try {
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(rs.next())
				result = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.print(result);
		return result;
	}
}
