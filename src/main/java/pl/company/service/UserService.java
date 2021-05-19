package pl.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.company.model.Role;
import pl.company.model.User;
import pl.company.repository.RoleRepository;
import pl.company.repository.UserRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

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
	//add Member
	public User saveUser(User user) {
		user.setPassword(passEncoder.encode(user.getPassword()));
		user.setEnabled(1);
		Role role = roleRepo.findByName("ROLE_USER");
		user.setRoles(new HashSet<Role>(Arrays.asList(role)));
		return userRepo.save(user);
	}

//	public boolean checkUserLogin(String login, String password)
//			throws SQLException, ClassNotFoundException {
//
//		List<User> users = userRepo.findAll();
//		for (User user : users) {
//			if (user.getUsername().equals(login) && user.getPassword().equals(password)) {
//				return true;
//			}
//		}
//		return false;
//	}
	
	public List<User> findAll() {
		return null;
	}
	
	public <S extends User> boolean exists(Example<S> example) {
		return false;
	}
	
	public User getOne(Integer integer) {
		return null;
	}
	
	public List<User> findAll(Sort sort) {
		return null;
	}
	
	public List<User> findAllById(Iterable<Integer> iterable) {
		return null;
	}
	
	public long count() {
		return 0;
	}
	
	public void deleteById(Integer integer) {
	}
	
	public void delete(User user) {
	}
	
	public void deleteAll(Iterable<? extends User> iterable) {
	}
	
	public void deleteAll() {
	}
	
	public <S extends User> List<S> saveAll(Iterable<S> iterable) {
		return null;
	}
	
	public Optional<User> findById(Integer integer) {
		return Optional.empty();
	}
	
	public boolean existsById(Integer integer) {
		return false;
	}
	
	public void deleteInBatch(Iterable<User> iterable) {
	}
	
	public void deleteAllInBatch() {
	}
	
	public <S extends User> Optional<S> findOne(Example<S> example) {
		return Optional.empty();
	}
	
	public <S extends User> List<S> findAll(Example<S> example) {
		return null;
	}
	
	public <S extends User> List<S> findAll(Example<S> example, Sort sort) {
		return null;
	}
	
	public <S extends User> Page<S> findAll(Example<S> example, Pageable pageable) {
		return null;
	}
	
	public <S extends User> long count(Example<S> example) {
		return 0;
	}
}







