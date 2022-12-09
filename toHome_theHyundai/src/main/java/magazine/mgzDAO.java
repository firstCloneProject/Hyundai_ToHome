package magazine;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.DBManager;
import oracle.jdbc.internal.OracleTypes;

public class mgzDAO {
	private DataSource dataFactory;
	private Connection conn;
	private Statement stmt;
	
	public mgzDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<mgzVO> getRecommand (String customerId) {
		System.out.println("getRecommand ³Ñ¾î¿È");
		
		Connection conn = DBManager.getConnection();
		List<mgzVO> recipeList = new ArrayList<mgzVO>();
		Integer recipeId = null;
		String recipeImagepath = null; 
		String recipeName = null;
		String recipeCategory = null;
		String recipeThumb = null;
		
		try {
			String runSP = "{call RECPOP(?,?) }";
			System.out.println("getR() try¿¡ µé¾î¿È");
			CallableStatement cstmt = conn.prepareCall(runSP);
			
			cstmt.setString(1, customerId);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.executeQuery();
			ResultSet rs = (ResultSet)cstmt.getObject(2);
			
			while(rs.next()) {
            
				System.out.println(rs.getInt("RECIPE_ID"));
				recipeId = rs.getInt("RECIPE_ID");
				recipeImagepath = rs.getString("RECIPE_IMAGEPATH");
				recipeName = rs.getString("RECIPE_NAME");
				recipeCategory = rs.getString("RECIPE_CATEGORY");
				recipeThumb = rs.getString("RECIPE_THUMB");
				
				mgzVO mgz = new mgzVO(recipeId, recipeImagepath, recipeName, recipeCategory, recipeThumb);
				recipeList.add(mgz);
				
			}
			
			//conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return recipeList;
	}
	public List<mgzVO> getAllRecipe () {
		System.out.println("getAllRecipe ³Ñ¾î¿È");
		String runSP = "{ call recAll(?)}";
		
		Connection conn = DBManager.getConnection();
		List<mgzVO> recipeList = new ArrayList<mgzVO>();
		
		try {
			CallableStatement callableStatement = conn.prepareCall(runSP);
			System.out.println("getAll() try¿¡ µé¾î¿È");
			
			callableStatement.registerOutParameter(1, OracleTypes.CURSOR);
			callableStatement.executeQuery();
			ResultSet rs = (ResultSet)callableStatement.getObject(1);
			
			while(rs.next()) {

				System.out.println(rs.getInt("RECIPE_ID"));
				Integer recipeId = rs.getInt("RECIPE_ID");
				String recipeImagepath = rs.getString("RECIPE_IMAGEPATH");
				String recipeName = rs.getString("RECIPE_NAME");
				String recipeCategory = rs.getString("RECIPE_CATEGORY");
				String recipeThumb = rs.getString("RECIPE_THUMB");
				
				mgzVO mgz = new mgzVO(recipeId, recipeImagepath, recipeName, recipeCategory, recipeThumb);
				recipeList.add(mgz);
				System.out.println(mgz);
				
			}
			
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return recipeList;
		
	}

}
