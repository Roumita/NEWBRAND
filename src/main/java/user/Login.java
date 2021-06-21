package user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/User/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email_saisie = request.getParameter("email");
		String pwd_saisie = request.getParameter("pwd");
		
		/*String error ="";
		// Verification champs vide - en Java ou JS
		
		if(email_saisie.equals("") && pwd_saisie.equals("") ) {
			error = "Les champs sont obligatoires";
		}
		else if(email_saisie.equals("") ) {
			
			error = "Le champs email est obligatoire";
		}
		else if(pwd_saisie.equals("") ) {
			
			error = "Le champs password est obligatoire";
		}*/
		
		UserDao usDao = new UserDao();
		
		if (usDao.login(email_saisie, pwd_saisie) != null) {
			
			String prenom = usDao.login(email_saisie, pwd_saisie).getPrenom();
			System.out.println(prenom);
			/*
			 * On prepare la session afin de garder en memoire tampon le user connecté
			 * avec HttpSession
			 */
			
			HttpSession session = request.getSession(true);
			
			/*
			 * ICI, session.setAttribute("utilisateur", prenom+" "+usDao.login(email_saisie, pwd_saisie).getNom()
			 * on recupére le le prenom de l'utilisateur et le stocker dans l'attribut utilisateur
			 * */
			session.setAttribute("utilisateur", prenom);
			
			//Si la connection s'est bien passée, je redirige vers index.jsp
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}else {
			System.out.println("oups");
			//Affichage message d'erreur
			request.setAttribute("erreur", "Oups, login ou mot de passe incorrects");
			
			//Sinon je redirige vers la page de login
			request.getRequestDispatcher("/User/login.jsp").forward(request, response);
		}
	}

}