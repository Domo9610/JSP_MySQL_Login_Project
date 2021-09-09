package Pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MySQL {
	private Connection conn; //DB Ŀ�ؼ� ���� ��ü
	private final String USERNAME = "root";//DBMS���� �� ���̵�
	private final String PASSWORD = "1234";//DBMS���� �� ��й�ȣ
	private final String URL = "jdbc:mysql://localhost:3306/LoginProject";//DBMS������ db��

	public MySQL() {
		try {
			System.out.println("[ ������ ]");
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			System.out.println("[ ����̹� �ε� ���� ]");
		} catch (Exception e) {
			System.out.println("[ ����̹� �ε� ���� ]");
			try {
				conn.close();
			} catch (SQLException e1) {    }
		}
	}

	public void create(String id, String pw, String name, String email, String num, String date) {
		String sql = "insert into UserList values(?,?,?,?,?,?)";
		PreparedStatement pstmt = null;
		try{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); //ID
			pstmt.setString(2, pw); //PW
			pstmt.setString(3, name); //Name
			pstmt.setString(4, email); //email
			pstmt.setString(5, num); //num
			pstmt.setString(6, date); //date
			
			int result = pstmt.executeUpdate();
			if(result == 1) {
				System.out.println("[ Create �޼��� ���� ���� ]");
			}
		}catch (Exception e) {
			System.out.println("[ Create �޼��� ���� ���� ]");
		}    finally {
			try {
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
					return;
				}
			} catch (Exception e2) {}
		}
	}
	
	public String readID(String s) {
		String sql = "select ID from UserList;";
		PreparedStatement pstmt = null;
		String CHECK="checked";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id=rs.getString("ID");
				if(id.equals(s)) {
					CHECK="denied";
					break;
				}
			}
		}
		catch(Exception e) {
			System.out.println("[ select �޼��� ���ܹ߻� ]");
		}    finally {
			try {
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
					return CHECK;
				}
			} catch (Exception e2) {}
		}
		return CHECK;
	}
	

	public int readlogin(String id, String pw) {
		String sql = " select * from UserList ";
		PreparedStatement pstmt = null;
		
		int checknum = 0;
		String checkID ;
		String checkPW ;
		
		
		// 0 = �α��� ���� �߻�
		// 1 = ID�� ����
		// 2 = ID�� ������ PW�� Ʋ��
		// 3 = ID PW �Ѵ� ����
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			System.out.println("[ select �޼��� ���� ]");
			
			while(rs.next()) {
				checkID = rs.getString("ID");
				checkPW = rs.getString("PW");

				if(id.equals(checkID)) {
					checknum = pw.equals(checkPW)? 3 : 2;
				}
				else {
					checknum = 1;
				}
			}
			return checknum;

		}
		catch(Exception e) {
			System.out.println("[ select �޼��� ���ܹ߻� ]");
		}    finally {
			try {
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
					return checknum;
				}
			} catch (Exception e2) {}
		}
		return checknum;
	}
	
//	public String findID(String name, String email) {
//		
//		String sql = " select * from UserList ";
//		PreparedStatement pstmt = null;
//		
//		String checkname ;
//		String checkemail ;
//		String resultID ;
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			ResultSet rs = pstmt.executeQuery();
//			System.out.println("[ select �޼��� ���� ]");
//			
//			while(rs.next()) {
//				checkname = rs.getString("FullName");
//				checkemail = rs.getString("Email");
//
//				if(name.equals(checkname)) {
//					resultID = email.equals()? 3 : 2;
//				}
//				else {
//					checknum = 1;
//				}
//			}
//			return "���� ������ ã�� ���Ͽ����ϴ�.";
//
//		}
//		catch(Exception e) {
//			System.out.println("[ select �޼��� ���ܹ߻� ]");
//		}    finally {
//			try {
//				if(pstmt!=null && !pstmt.isClosed()) {
//					pstmt.close();
//					return "ã�� ���� ������ �߻��߽��ϴ�.";
//				}
//			} catch (Exception e2) {}
//		}
//		return "ã�� ���� ������ �߻��߽��ϴ�.";
//		
//	}

	public void update(String a, int b, int c) {
		String sql = "update table01 set Age=?, Salary=? where FullName=?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,b);
			pstmt.setInt(2,c);
			pstmt.setString(3,a);
			pstmt.executeUpdate();
			System.out.println("[ Name : " + a + "������ ]");

		} catch (Exception e) {
			System.out.println("[ update �޼��� ���� �߻� ] ");
		}    finally {
			try {
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
					return;
				}
			} catch (Exception e2) {}
		}
	}


	public void delete(String a) {
		String sql = "Delete from table01 where FullName= ? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,a);
			pstmt.executeUpdate();
			System.out.println("[ Name : " + a + " ������ ]");

		} catch (Exception e) {
			System.out.println("[ update �޼��� ���� �߻� ] ");
		}    finally {
			try {
				if(pstmt!=null && !pstmt.isClosed()) {
					pstmt.close();
					return;
				}
			} catch (Exception e2) {}
		}
	}
}

