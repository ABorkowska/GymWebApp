package pl.company.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

public class SecurityServiceImpl implements SecurityService {
	
	@Autowired
	private AuthenticationManager authManager;
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	private static final Logger logger = LoggerFactory.getLogger(SecurityServiceImpl.class);
	
	
	// aktualnie zalogowany uzytkownik
	@Override
	public String findLoggedInUser() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			return ((UserDetails) principal).getUsername();
		}
		return null;
	}
	
	//auto-logowanie po rejestracji
	@Override
	public void autoLogin(String username, String password) {
		
		UserDetails userData = userDetailsService.loadUserByUsername(username);
		
		UsernamePasswordAuthenticationToken passToken =
				new UsernamePasswordAuthenticationToken(userData, password, userData.getAuthorities());
		
		authManager.authenticate(passToken);
		
		if (passToken.isAuthenticated()) {
			SecurityContextHolder.getContext().setAuthentication(passToken);
			
			logger.debug("auto-login succesfull for: " + username);
		}
		
	}
}
