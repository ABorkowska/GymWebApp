package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.company.model.Trainer;

import java.util.List;

public interface TrainerRepository extends JpaRepository<Trainer, Long> {

	@Query(value = "select (name, surname) from trainers", nativeQuery = true)
	List<Trainer> findTrainerNames();
}