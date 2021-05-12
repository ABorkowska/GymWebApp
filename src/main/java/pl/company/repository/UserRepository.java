package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByUsername(String username);
}