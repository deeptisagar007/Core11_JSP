package com.marlabs.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Registration {

	public boolean registerEmployee(EmployeeBean empBean) {
		Connection connection = DBConnect.getConnection();
		String INSERT_QUERY = "INSERT INTO employee VALUES( ?, ?, ?, ?);";

		boolean insertResult = false;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY);
			preparedStatement.setInt(1, (empBean.getEmpId()));
			preparedStatement.setString(2, (empBean.getEmpName()));
			preparedStatement.setDouble(3, empBean.getEmpSal());
			preparedStatement.setInt(4, (empBean.getEmpDept()));
			int updateResult = preparedStatement.executeUpdate();
			if (updateResult > 0) {
				insertResult = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insertResult;
	}

}
