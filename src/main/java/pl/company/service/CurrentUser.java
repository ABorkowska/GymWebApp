package pl.company.service;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
import pl.company.model.User;

import java.util.Collection;

public class CurrentUser extends User {
	
	private final pl.company.model.User user;
	
	public CurrentUser(String username, String password, Collection<?extends GrantedAuthority> authorities,
	                   pl.company.model.User user){
		super();
		this.user = user;
	}
	public pl.company.model.User getUser(){
		return user;
	}
}


//TODO sesja dla zalogowanego uzytkownika
//do wstrzykniecia w danej klasie
//
//	@Autowired
//	private CurrentUser currentUser;