package E.Channelling.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import E.Channelling.model.User;
import E.Channelling.util.CommonConstants;
import E.Channelling.util.CommonUtil;
import E.Channelling.util.DBConnection;
import E.Channelling.util.QueryUtil;

public class UserServiceIMPl implements UserService{

	private static Connection connection;
	private static Statement stmt; 
	private static PreparedStatement preparedStatement;
	private static boolean isSuccess;
	
	
	static{
		
		creatUserTable();
		
	}
	
	public static void creatUserTable() {
		
	
			
			try{
				
				connection = DBConnection.getDBConnection();
				
				stmt = connection.createStatement();
				
				stmt.execute(QueryUtil.queryById(CommonConstants.Query_ID_Create_USER_TABLE));
				
			}
			catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				
				
				System.out.println(e.getMessage());
			}finally {
				
				
				try {
					if(connection != null) {
						connection.close();
					}
					
					if(stmt != null) {
						
						stmt.close();
					}
				
			}catch(SQLException e) {
			
				
				System.out.println(e.getMessage());
			}
		}
			
	}

	
	
	@Override
	public void addUser(User user) {
	   
		String Userid = CommonUtil.genarateUserID(getUseridu());
		
		try {
			connection = DBConnection.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.Query_ID_INSERT_USER));
			connection.setAutoCommit(false);
			
			user.setUserId(Userid);
			
			
			preparedStatement.setString(CommonConstants.COLMN_INDEX_ONE,user.getUserId());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_TWO,user.getUserFistName());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_THREE,user.getUserLastName());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_FOUR,user.getUserContactNo());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_FIVE,user.getUserEmail());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_SIX,user.getUserAdress());
			preparedStatement.setString(CommonConstants.COLMN_INDEX_SEVEN,user.getPassword());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		        
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e){
			
			System.out.println(e.getMessage());
		}finally {
			
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(	preparedStatement != null) {
					
					preparedStatement.close();
				}
			
		}catch(SQLException e) {
		
			
			System.out.println(e.getMessage());
		}
	}
		
}
	//getting id of the users..
	
	public ArrayList<String> getUseridu(){
		
		ArrayList <String> idu = new ArrayList<String>();
		try {
			
		connection = DBConnection.getDBConnection();
		preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.Query_ID_GET_USER_IDU));
		
		ResultSet rs = preparedStatement.executeQuery();
		
		while (rs.next()) {
			
			idu.add(rs.getString(CommonConstants.COLMN_INDEX_ONE)); 
		}
		
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e){
		
		System.out.println(e.getMessage());
	    }
		finally {
			
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
			
		}catch(SQLException e) {
		
			
			System.out.println(e.getMessage());
		}
	}
		return idu;
	}
 
	
	public static boolean validate( String username, String password) {
		
		
		
		try {
			
			connection = DBConnection.getDBConnection();
			stmt = connection.createStatement();
			String sql ="select * from users where UserEmail='"+username+"' and  UserPassword='"+password+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
				
			}else {
				
				isSuccess = false;
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}		
		
		
		return isSuccess;
		
		
	}
	
	public static List<User> getUser(String userEmail) {
	   
     ArrayList<User> user = new ArrayList<>(); 
	    try {
	    	
	    	 connection = DBConnection.getDBConnection();
		     stmt = connection.createStatement();
		     String sql = "select * From users where UserEmail = '"+userEmail+"'";
		     ResultSet rs = stmt.executeQuery(sql);
		     
		    while(rs.next()) {
		    	
		    	String id = rs.getString(1);
		    	String FirstName = rs.getString(2);
		    	String LastName = rs.getString(3);
		    	String ContactNo = rs.getString(4);
		    	String Email = rs.getString(5);
		    	String Address = rs.getString(6);
		    	String Password = rs.getString(7);
		    	
		    	User users = new User(id,FirstName,LastName,ContactNo,Email,Address,Password);
		      
		    	user.add(users);
		    }
	    }catch(Exception e){
	    	
	    	e.printStackTrace();
	    }
	  return user;
	}
   
	public static boolean UpdateUSer (String id,String Fname,String Lname ,String Cno,String Email,String Address,String password) {
		
		
		try {
			

			connection = DBConnection.getDBConnection();
		    stmt = connection.createStatement();
			String sql = "update users set  UserFistName = '"+Fname+"', UserLastName = '"+Lname+"', UserContactNo = '"+Cno+"', UserEmail = '"+Email+"',UserAdress = '"+Address+"', UserPassword = '"+password+"' where   UserId = '"+id+"'";
			int rs = stmt.executeUpdate(sql); // execute two values if return 1 its mean its success if not its not success
			
			if(rs>0) {
				
				isSuccess =true;
				
			}else {
				
				isSuccess =false;
			}
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
	}
	
	public static boolean deleteUser(String id) {
		

		try {
			

			connection = DBConnection.getDBConnection();
		    stmt = connection.createStatement();
			String sql = "delete from users where UserId = '"+id+"'";
			int rs = stmt.executeUpdate(sql); // execute two values if return 1 its mean its success if not its not success
			
			
			if(rs>0) {
				
				isSuccess = true;
				
				
			}else {
				
				isSuccess = false;
				
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return isSuccess;
	} 

}
