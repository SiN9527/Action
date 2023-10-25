package tw.com.eeit.petforum.controller.page.frontend;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.com.eeit.petforum.model.bean.Pet;
import tw.com.eeit.petforum.model.dao.PetDAO;
import tw.com.eeit.petforum.util.ConnectionFactory;
import tw.com.eeit.petforum.util.PathConverter;

@WebServlet("/pets")
public class ToPets extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try (Connection conn=ConnectionFactory.getConnection();){
			PetDAO petDAO = new PetDAO(conn);
			List<Pet> plist = petDAO.findAllPetWithMember();
			request.setAttribute("plist", plist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher(PathConverter.convertToWebInfPathForFrontend(request.getServletPath()))
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
