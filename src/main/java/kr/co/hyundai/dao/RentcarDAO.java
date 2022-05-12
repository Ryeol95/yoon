package kr.co.hyundai.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import kr.co.hyundai.vo.CarListVO;
import kr.co.hyundai.vo.CarReserveVO;

public class RentcarDAO {

	Connection conn = null;	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public Connection getConnection() {
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String Driver = "oracle.jdbc.driver.OracleDriver";
		String id = "c##hyun";
		String pass = "1234";
		try {			
			Class.forName(Driver);
			conn = DriverManager.getConnection(url, id, pass);
			System.out.println("데이터베이스 연동에 성공했습니다.");	
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}	
		return conn;
	}
	
	//최신 자동차 정보를 읽어와서 반환하는 메소드
	public Vector<CarListVO> getSelectCar(){
		
		Vector<CarListVO> v =  new Vector<CarListVO>();
		
		getConnection();
		
		try {
			int count = 0;
			
			String sql = "select * from rentCar order by no desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CarListVO cvo = new CarListVO();
				
				cvo.setNo(rs.getInt(1)); 
				cvo.setCarname(rs.getString(2)); 
				cvo.setCategory(rs.getInt(3));
				cvo.setPrice(rs.getInt(4));
				cvo.setUsepeople(rs.getInt(5));
				cvo.setCompany(rs.getString(6));
				cvo.setImg(rs.getString(7));
				cvo.setInfo(rs.getString(8));
				
				v.add(cvo);
				
				++count;
				
				if(count >= 3)
					break;				
			}
			
			if(conn != null) {
				conn.close();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	//대형, 중형, 소형에 따라서 넘어온 카테고리 값으로 자동차를 불러서 반환
	
	public Vector<CarListVO> getCategoryCar(int category){
		
		getConnection();
		
		Vector<CarListVO> v =  new Vector<CarListVO>();
		
		try {
			String sql = "select * from rentCar where category = ?";//1(소형), 2(중형), 3(대형)
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, category); 
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CarListVO cvo = new CarListVO();
				
				cvo.setNo(rs.getInt(1)); 
				cvo.setCarname(rs.getString(2)); 
				cvo.setCategory(rs.getInt(3));
				cvo.setPrice(rs.getInt(4));
				cvo.setUsepeople(rs.getInt(5));
				cvo.setCompany(rs.getString(6));
				cvo.setImg(rs.getString(7));
				cvo.setInfo(rs.getString(8));
				
				v.add(cvo);
			}
			
				if(conn != null) {
					conn.close();
				}			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}

	//전체 자동차 리스트 반환
	public Vector<CarListVO> getAllCar() {
		
		getConnection();
		
		Vector<CarListVO> v =  new Vector<CarListVO>();
		
		try {
			String sql = "select * from rentCar";//1(소형), 2(중형), 3(대형)의 구분이 없이 모두 반환
			
			pstmt = conn.prepareStatement(sql);
					
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CarListVO cvo = new CarListVO();
				
				cvo.setNo(rs.getInt(1)); 
				cvo.setCarname(rs.getString(2)); 
				cvo.setCategory(rs.getInt(3));
				cvo.setPrice(rs.getInt(4));
				cvo.setUsepeople(rs.getInt(5));
				cvo.setCompany(rs.getString(6));
				cvo.setImg(rs.getString(7));
				cvo.setInfo(rs.getString(8));
				
				v.add(cvo);
			}
			
				if(conn != null) {
					conn.close();
				}			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	//no에 따른 자동차 정보를 반환
	public CarListVO getOneCar(int no){
		
		getConnection();
		
		CarListVO cvo = new CarListVO();
		
		try {
			
			String sql = "select * from rentCar where no = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no); 
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {							
				cvo.setNo(rs.getInt(1)); 
				cvo.setCarname(rs.getString(2)); 
				cvo.setCategory(rs.getInt(3));
				cvo.setPrice(rs.getInt(4));
				cvo.setUsepeople(rs.getInt(5));
				cvo.setCompany(rs.getString(6));
				cvo.setImg(rs.getString(7));
				cvo.setInfo(rs.getString(8));
			
				if(conn != null) {
					conn.close();
				}	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cvo;
	}
	
	//id와 password 존재유무 확인
	public int getMember(String id, String pass){
		
		getConnection();
		
		int result = 0;//처음이면 회원이 존재하지 않음.
		
		try {
			String sql = "select count(*) from member2 where id = ? and passwd = ?"; 
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pass); 
			
			rs = pstmt.executeQuery();//1
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;//1
		
	}
	
	//자동차 예약 정보 입력
	public void setReserveCar(CarReserveVO crvo){
		
		getConnection();
		
		try {
			String sql = "insert into CarReserve values(reserve_seq.nextval, ?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, crvo.getId()); 
			pstmt.setInt(2, crvo.getNo()); 
			pstmt.setInt(3, crvo.getQty());
			pstmt.setInt(4, crvo.getDday());
			pstmt.setString(5, crvo.getRday());
			pstmt.setInt(6, crvo.getInsurance());
			pstmt.setInt(7, crvo.getWifi());
			pstmt.setInt(8, crvo.getBabyseat());
			pstmt.setInt(9, crvo.getNavination());
			
			pstmt.executeUpdate();	
			
			if(conn != null) {
				conn.close();
			}			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}
