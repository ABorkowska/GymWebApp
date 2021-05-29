package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.company.model.ClassRegister;
import pl.company.model.User;

import java.util.List;

@Repository
public interface ClassRegisterRepository extends JpaRepository<ClassRegister, Long> {
	
//	@Query("select u.name from User u")
//	List<User> users findUserNames();
}