package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import bean.Goods;
import bean.User;
import util.C3P0Utils;
import util.Page;

/*public class GoodDao {
	public static List<Goods> getGoodsList() {
		QueryRunner qRunner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from goods";
		try {		
			ArrayList<Goods> goodList = (ArrayList<Goods>) qRunner.query(sql, new BeanListHandler<Goods>(Goods.class));		
			return goodList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}*/
	
	
	public class GoodDao {
		QueryRunner qr = new QueryRunner(C3P0Utils.getDataSource());
		
		public List<Goods> geTypeInfos(Page page,int curPage) {
			//sql语句  查询表	tb_equip_type
			String sql="select * from type where status=0 order by id desc limit "+((curPage-1)*page.getPageSize())+", "+page.getPageSize();
			List<Goods> list=new ArrayList<Goods>();
			try {
				 list=qr.query(sql, new BeanListHandler<>(Goods.class));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
		
		/**
		 * 查询类型列表的总记录数量
		 * @return
		 */
		public int getTypeInfosCount() {
			String sql = "select count(id) from type where status=0";
			Long rowsCount = 0L;
			try {
				rowsCount = qr.query(sql, new ScalarHandler<Long>());
			} catch (Exception e) {
				e.printStackTrace();
			}
			return rowsCount.intValue();
		}
		
		/**
		 * 根据Id删除一条数据
		 * @param id
		 * @return
		 */
		public int delType(String id){
			String sql="update type set type.status=1  where id=?";
			int s=0;
			try {
				s=qr.execute(sql, id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return s;
		}

		public List<Goods> getGoodsList() {
			// TODO Auto-generated method stub
			return null;
		}
	}


