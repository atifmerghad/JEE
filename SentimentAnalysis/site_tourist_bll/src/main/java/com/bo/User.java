package com.bo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity	
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String first_name;
	private String last_name;
	private String login;
	private String password;
	
	//pour table destination
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private List<Destination> destinations;
	// pour table commentaire
	
	@OneToMany(mappedBy="user",cascade = CascadeType.ALL, fetch = FetchType.EAGER) //layze
	//@JoinColumn(name = "user_id")
	private List<Commentaire> commentaires;
	
	public User() {
		super();
	}
	
	public User(String first_name, String last_name, String login, String password) {
		super();
		this.first_name = first_name;
		this.last_name = last_name;
		this.login = login;
		this.password = password;
	}

	public void addDestination(Destination d) {
		destinations.add(d);
	}
	public void addCommentaire(Commentaire c) {
		commentaires.add(c);
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login =login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public List<Destination> getDestinations() {
		return destinations;
	}

	public void setDestinations(List<Destination> destinations) {
		this.destinations = destinations;
	}

	public List<Commentaire> getCommentaires() {
		return commentaires;
	}

	public void setCommentaires(List<Commentaire> commentaires) {
		this.commentaires = commentaires;
	}
	
}
