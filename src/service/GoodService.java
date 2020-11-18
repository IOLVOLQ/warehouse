package service;

import java.sql.SQLException;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.RETURN;

import bean.Goods;
import dao.GoodDao;
import util.Page;

public class GoodService {
	private GoodDao dao = new GoodDao();
	public Page<Goods> getTyPage(Page<Goods> page,Integer curPage){
		List<Goods> data = dao.geTypeInfos(page,curPage);
		int rowsCount = dao.getTypeInfosCount();
		page.setParam(data, curPage, rowsCount);
		return page;
	 }	
	
	
	public int delByid(String id) {
		return dao.delType(id);
	}
}


  
