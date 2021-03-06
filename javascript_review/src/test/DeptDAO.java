package test;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import common.ConnectionManager;

public class DeptDAO {
	//전역변수, 모든 메서드에서 공통으로 사용되는 변수
	Connection conn;
	PreparedStatement pstmt;
	
	//전체조회
	public ArrayList<DeptVO> selectAll(DeptVO deptVO) {
		DeptVO resultVO = null;
		ResultSet rs = null; // 초기화
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		try {
			conn = ConnectionManager.getConnnect();
			String sql = " SELECT DEPARTMENT_ID, DEPARTMENT_NAME,MANAGER_ID mgr_id, LOCATION_ID"
					   + " FROM DEPARTMENTS"
					   + " ORDER BY DEPARTMENT_ID";
			pstmt = conn.prepareStatement(sql);
			//pstmt.setInt(1,deptVO.getDepartment_id()); sql문에 물음표 없어서 set도 필요없음.
			rs = pstmt.executeQuery(); 
			while(rs.next()) {	
				resultVO = new DeptVO();
				resultVO.setDepartment_id(rs.getInt(1));
				resultVO.setDepartment_name(rs.getString("department_name"));
				resultVO.setManager_id(rs.getInt("mgr_id"));
				resultVO.setLocation_id(rs.getInt("LOCATION_ID"));
				list.add(resultVO);
			}
		} catch(Exception e) {
			
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return list;
		
	}
	//단건 조회
	public DeptVO selectOne(DeptVO deptVO) {
		DeptVO resultVO = null;
		ResultSet rs = null; // 초기화
		try {
			conn = ConnectionManager.getConnnect();
			String sql = " SELECT DEPARTMENT_ID, DEPARTMENT_NAME,MANAGER_ID mgr_id, LOCATION_ID"
					   + " FROM DEPARTMENTS"
					   + " WHERE DEPARTMENT_ID= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,deptVO.getDepartment_id());
			rs = pstmt.executeQuery(); 
			if(rs.next()) {	//처음 커서 위치는 BOF 
				resultVO = new DeptVO();
				resultVO.setDepartment_id(rs.getInt(1));
				resultVO.setDepartment_name(rs.getString("department_name"));
				resultVO.setManager_id(rs.getInt("mgr_id"));
				resultVO.setLocation_id(rs.getInt("LOCATION_ID"));
			}else {
				System.out.println("no data");
			}
		} catch(Exception e) {
			
		} finally {
			ConnectionManager.close(rs, pstmt, conn);
		}
		return resultVO;
		
	}
	
	//삭제
	public void delete(DeptVO deptVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "delete departments where department_id = ?";
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, deptVO.getDepartment_name());
			pstmt.setInt(1, deptVO.getDepartment_id());
			int r = pstmt.executeUpdate();
			System.out.println(r + " 건이 삭제됨");
			
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, pstmt, conn);
		}
	}
	
	public void update(DeptVO deptVO) {
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "update departments set department_name = ? where department_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, deptVO.getDepartment_name());
			pstmt.setInt(2, deptVO.getDepartment_id());
			pstmt.executeUpdate(); //업데이트할때 괄호안에 안들어감
			int r = pstmt.executeUpdate();
			System.out.println(r + " 건이 수정됨");
			
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			ConnectionManager.close(null, pstmt, conn);
		}
	}
	
	public void insert(DeptVO deptVO) {
		try {
			//1.DB연결
			conn = ConnectionManager.getConnnect();
			//2.SQL 구문 실행
			String sql = "insert into departments (department_id, department_name)"
						+ "values ("+ deptVO.getDepartment_id() + " ,' " 
									+ deptVO.getDepartment_name() + "')";
			Statement stmt = conn.createStatement(); //예외처리
			int r = stmt.executeUpdate(sql);
			//3.결과 처리
			System.out.println(r + " 건이 처리됨");
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			//4. 연결해제(DB에 접속 session수는 제한적 그래서 해제해야됨)
			ConnectionManager.close(conn);
			
		}
	}
}
