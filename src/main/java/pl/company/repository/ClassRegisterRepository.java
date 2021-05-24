package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.company.model.ClassRegister;

@Repository
public interface ClassRegisterRepository extends JpaRepository<ClassRegister, Long> {
}