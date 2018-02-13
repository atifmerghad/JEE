package com.web.actions.users;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.bo.Commentaire;
import com.bo.Destination;
import com.bo.User;
import com.services.DestinationService;
import com.services.UserService;
import com.web.actions.BaseAction;

@ResultPath(value = "/pages/")    //ModelDriven<Order>
public class UserAction extends BaseAction implements SessionAware{

	
	private static final long serialVersionUID = 1L;
	@Autowired
	private DestinationService destinationService;
	@Autowired
	private UserService userService;

	private List<Destination> destinations;

	private Destination destination;

	private Commentaire userComment;
	
	private Long idDestination;
	
	
	private User user;
	private User user1;
	
	List<User> users;

	//image
	private File userImage;
	private String userImageContentType;
	private String userImageFileName;
	
	private HttpServletRequest servletRequest;
	//image
	private Map<String, Object> sessionMap=new HashMap<String, Object>();
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }
	
	
	@Action(value = "/addDestination", results = { @Result(name = "success", type="redirectAction",location = "getAllDestinations") })
	public String addDestination() throws IOException {
		//String filePath = servletRequest.getSession().getServletContext().getRealPath("/");
		File fileToCreate = new File("D:\\destination_image", this.userImageFileName);
		FileUtils.copyFile(this.userImage, fileToCreate);
		destination.setPhoto("D:\\destination_image\\"+this.userImageFileName);
		destinationService.addDestination(destination);
		
		Long id=(Long) sessionMap.get("id");
		User utilisateur=userService.getUserById(id);
		utilisateur.addDestination(destination);
		userService.updateUser(utilisateur);
		addActionMessage("Destination correctement ajoutée");
		return SUCCESS;
	}

	@Action(value = "/getAllDestinations", results = { @Result(name = "success", location = "listDistinations.jsp") })
	public String getAllDestinationss() {
		destinations = destinationService.getAllDestinations();
		return SUCCESS;

	}



	@Action(value = "/addComment", results = {@Result(name = "success", type = "redirectAction", location = "getAllDestinations")})
	public String addComment() {
		Long id =idDestination;

		Destination destination = destinationService.getDestinationById(id);
		destination.addCommentaire(userComment);
		destinationService.updateDestination(destination);

		Long idUser=(Long) sessionMap.get("id");
		User utilisateur=userService.getUserById(idUser);
		utilisateur.addCommentaire(userComment);
		userService.updateUser(utilisateur);
		return SUCCESS;
	}
	@Action(value="/", results= { @Result(name = "success", location = "login.jsp") })
	public String execute() {
		System.out.println("enter");
		return SUCCESS;
	}
	@Action(value = "/authentifier", results = { @Result(name = "success",type = "redirectAction", location = "getAllDestinations"),
			@Result(name = "input", location = "login-error.jsp")
	})
	public String connecter(){
		users=userService.getAllUsers();
		for(User it : users) {
			if(user1.getLogin().equalsIgnoreCase(it.getLogin()) && user1.getPassword().equals(it.getPassword())){
				sessionMap.put("login", user1.getLogin());
				sessionMap.put("id",it.getId());
	
				return SUCCESS;
			}	
		}
		//setMsg("Login OR Password");
		return INPUT;
	}
	
	@Action(value="/deconnecter", results= {@Result(name = "success", location = "login.jsp") })
	public String deconnecter() {
		if (sessionMap.containsKey("login")) {
            sessionMap.remove("login");
            sessionMap.remove("id");
        }
		return SUCCESS;
	}
	
	@Action(value="/register", results= {@Result(name = "success",type = "redirectAction", location = "getAllDestinations") })
	public String register() {
		userService.addUser(user);
		return SUCCESS;
	}

	public Destination getDestination() {
		return destination;
	}

	public void setDestination(Destination destination) {
		this.destination = destination;
	}

	public List<Destination> getDestinations() {
		return destinations;
	}

	public void setDestinations(List<Destination> destinations) {
		this.destinations = destinations;
	}

	public Commentaire getUserComment() {
		return userComment;
	}

	public void setUserComment(Commentaire userComment) {
		this.userComment = userComment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getUser1() {
		return user1;
	}

	
	//image
	
	public Long getIdDestination() {
		return idDestination;
	}

	public void setIdDestination(Long idDestination) {
		this.idDestination = idDestination;
	}

	public void setUser1(User user1) {
		this.user1 = user1;
	}

	public File getUserImage() {
		return userImage;
	}

	public void setUserImage(File userImage) {
		this.userImage = userImage;
	}

	public String getUserImageContentType() {
		return userImageContentType;
	}

	public void setUserImageContentType(String userImageContentType) {
		this.userImageContentType = userImageContentType;
	}

	public String getUserImageFileName() {
		return userImageFileName;
	}

	public void setUserImageFileName(String userImageFileName) {
		this.userImageFileName = userImageFileName;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	

	
	//image
}