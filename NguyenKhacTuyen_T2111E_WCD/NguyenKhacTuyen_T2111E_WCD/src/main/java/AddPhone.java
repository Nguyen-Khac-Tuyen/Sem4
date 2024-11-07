

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddPhone
 */
@WebServlet("/them-dien-thoai")
public class AddPhone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPhone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setAttribute("web_title","Thêm điện thoại");
            request.setAttribute("web_content","addphone.jsp");
            request.getRequestDispatcher("./layout.jsp").forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		try 
        {
            // Bắt lấy dữ liệu gửi lên từ Form
            String name           = request.getParameter("name");
            String brand           = request.getParameter("brand");
            String price           = request.getParameter("price");
            String description           = request.getParameter("description");
        
            //System.out.print(name);
            
            HashMap<Integer,String> data = new HashMap();
            data.put(1, name);
            data.put(2, brand);
            data.put(3, price);
            data.put(4, description);
            
            // Thêm mới dòng bản ghi vào CSDL
            Phone.Add(data);
            
            // Gửi thông báo thành công sang trang JSP
            HttpSession session = request.getSession();
            session.setAttribute("SUCCESS_MSG", "Đã hoàn tất việc thêm mới !");
            
            // Điều hướng sang trang danh sách
            response.sendRedirect("/danh-sach-dien-thoai");
        } catch (Exception ex) {
            
            System.out.println("SQL Error: "+ex.getMessage());
            
        }
	}

}
