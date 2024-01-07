package bank.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import bank.db.BankDbConnection;
import bank.model.Register;
public class RegisterDaoImpl implements RegisterDao{
BankDbConnection bankdao=new BankDbConnection();
	
	@Override
	public int createRecord(List<Register> lst) {
		// TODO Auto-generated method stub
		
		Register regobj=lst.get(0);
		int i=0;
		Connection con=null;
		try {
			con=bankdao.getDbConnection();
			PreparedStatement pstate=con.prepareStatement("insert into RegisterBank values(?,?,?,?,?)");
			pstate.setInt(1,regobj.getRegNo());
			pstate.setString(2,regobj.getCustName());
			pstate.setString(3,regobj.getUserName());
			pstate.setString(4,regobj.getPassword());
			pstate.setFloat(5,regobj.getAccBalance());
			i = pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return i;
	}

	@Override
	public List<Register> retriveRecord(int regNo) {
		
		
		Connection con=bankdao.getDbConnection();
		List<Register> lstreg=null;
		
		try {
			PreparedStatement pstate=con.prepareStatement("select * from RegisterBank where regno=?");
			pstate.setInt(1, regNo);
			ResultSet result=pstate.executeQuery();
			if(result.next())
			{
				lstreg=new ArrayList<Register>();
				Register regobj=new Register(result.getInt(1),result.getString(2),result.getString(3),result.getString(4),result.getFloat(5));
				lstreg.add(regobj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lstreg;
	}

	@Override
	public int deleteRecord(int regNo) {
		Connection con=bankdao.getDbConnection();
		int i=0;
		try {
			PreparedStatement pstate=con.prepareStatement("delete from RegisterBank where regno=?");
			pstate.setInt(1, regNo);
			i = pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
	@Override
	public List<Register> displayAll() {
		Connection con=bankdao.getDbConnection();
		List<Register> lstreg=new ArrayList<Register>();
		String str="select regno,custname,acc_bal from registerbank";
		try {
			Statement state=con.createStatement();
			ResultSet result=state.executeQuery(str);
			while(result.next()) {
				int a=result.getInt(1);
				String b=result.getString(2);
				float c=result.getFloat(3);
				Register reg=new Register(a, b, c);
				lstreg.add(reg);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return lstreg;
		
	}
	
	public int updateAcc(Register reg) {
		int i=0;
		Connection con=bankdao.getDbConnection();
		
		try {
			PreparedStatement pstate=con.prepareStatement("update registerbank set custname=? where regno=?");
			pstate.setString(1, reg.getCustName());
			pstate.setInt(2, reg.getRegNo());
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("updated");
		
		return i;
	}
		

}
