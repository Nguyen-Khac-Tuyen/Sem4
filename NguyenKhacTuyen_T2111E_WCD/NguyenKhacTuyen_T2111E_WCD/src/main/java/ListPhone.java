

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListPhone
 */
@WebServlet("/danh-sach-dien-thoai")
public class ListPhone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListPhone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
            
            // Gửi dữ liệu từ Servlet sang JSP
            request.setAttribute("DataTable",Phone.List());
            
            // Xuất trang JSP
            request.setAttribute("web_title","Danh sách điện thoại");
            request.setAttribute("web_content","listphone.jsp");
            request.getRequestDispatcher("./layout.jsp").forward(request, response);
        } 
        catch (Exception ex) 
        {
            //ex.printStackTrace();
            System.out.println("SQL Error: "+ex.getMessage());
        }
	}

}
