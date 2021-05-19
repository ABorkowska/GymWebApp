package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
	
	//Admin findByUsername(String username);
}