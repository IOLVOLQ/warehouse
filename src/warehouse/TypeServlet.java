package warehouse;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Goods;
import dao.GoodDao;
import service.GoodService;
import util.Page;

/**
 * Servlet implementation class TypeServlet
 */
@WebServlet("/TypeServlet")
public class TypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GoodService goodService = new GoodService();
		String curPageStr = request.getParameter("curPage");
		int curPage = 1;
		if (curPageStr != null) {
			curPage = Integer.parseInt(curPageStr);
		}
		
		Page page =(Page) request.getAttribute("page");
		if (page == null) {
			page = new Page(5);
		}
		
		page = goodService.getTyPage(page, curPage);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/WEB-INF/html/index.jsp").forward(request, response);
	}

}
