package pl.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.company.model.Role;
import pl.company.model.User;
import pl.company.repository.RoleRepository;
import pl.company.repository.UserRepository;

import java.util.*;

@Service
public class UserService {
	
	private UserRepository userRepo;
	private RoleRepository roleRepo;
	private BCryptPasswordEncoder passEncoder;
	
	@Autowired
	public UserService(UserRepository userRepo, RoleRepository roleRepo,BCryptPasswordEncoder passEncoder) {
		this.userRepo = userRepo;
		this.roleRepo = roleRepo;
		this.passEncoder = passEncoder;
	}
	
	public User findUserByUsername(String username) {
		return userRepo.findByUsername(username);
	}
	
	public User addUser(User user) {
		user.setPassword(passEncoder.encode(user.getPassword()));
		user.setEnabled(1);
		Role role = roleRepo.findByName("ROLE_USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(role)));
		return userRepo.save(user);
	}
	
	public User saveUser(User user, String email, String name, String surname, String password) {
		user.setPassword(passEncoder.encode(password));
		user.setEnabled(1);
		Role role = roleRepo.findByName("ROLE_USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(role)));
		user.setEmail(email);
		user.setFirstName(name);
		user.setLastName(surname);
		return userRepo.save(user);
	}
	
	public Optional<User> findOptionalUserById(Long id) {
		return userRepo.findById(id);
	}
	
	public List<User> findUsers() {
		return userRepo.findAll();
	}
}







