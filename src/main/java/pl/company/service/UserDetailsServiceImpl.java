package pl.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.company.model.Role;
import pl.company.model.User;
import pl.company.repository.AdminRepository;
import pl.company.repository.UserRepository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	private UserService userService;
	
	@Autowired
	public void setUserRepository(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username){
		User user = userService.findUserByUsername(username);
		if (user == null){
			throw new UsernameNotFoundException(username);
		}
		List<GrantedAuthority> roles = getUserAuthority(user.getRoles());
		return setUserForAuthentication(user, roles);
		
	}
	private List<GrantedAuthority> getUserAuthority(Set<Role> userRoles){
		Set<GrantedAuthority> roles = new HashSet<GrantedAuthority>();
		for (Role role: userRoles){
			roles.add(new SimpleGrantedAuthority(role.getName()));
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<>(roles);
		return grantedAuthorities;
	}
	private UserDetails setUserForAuthentication(User user, List<GrantedAuthority>authorities){
		return new org.springframework.security.core.userdetails.User
				(user.getUsername(), user.getPassword(), true, true, true, true, authorities);
	}
}
