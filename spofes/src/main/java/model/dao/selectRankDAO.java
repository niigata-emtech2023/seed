package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.entity.SpoFesBean;

public class selectRankDAO {
	
	public List<SpoFesBean> select(){
		
		List<SpoFesBean> list = new ArrayList<SpoFesBean>();
		
		try {

			String sql = "SELECT * FROM m_rank ORDER BY point";

			try(Connection con = ConnectionManager.getConnection();
					PreparedStatement pstmt =  con.prepareStatement(sql)){
				
				

				ResultSet res = pstmt.executeQuery();

				// 結果の操作
				while (res.next()) {
					SpoFesBean bean = new SpoFesBean();
					list.add(bean.setRank());
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return list;
	}
}
