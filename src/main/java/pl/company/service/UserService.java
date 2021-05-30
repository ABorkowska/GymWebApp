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
	private ClassRegisterService classService;
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
	//add Member
	public User saveUser(User user) {
		user.setPassword(passEncoder.encode(user.getPassword()));
		user.setEnabled(1);
		Role role = roleRepo.findByName("ROLE_USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(role)));
		return userRepo.save(user);
	}
	
	public Optional<User> findOptionalUserById(Long id) {
		return Optional.ofNullable(userRepo.findById(id).orElse(null));
	}
	
	public User findRegisteredUser(Long id){
		return userRepo.findById(id).orElse(null);
	}
	
	public List<User> findUsers() {
		return userRepo.findAll();
	}
	
	public long count() {
		return 0;
	}
}







