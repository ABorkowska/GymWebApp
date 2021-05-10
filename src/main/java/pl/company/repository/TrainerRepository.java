package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Trainer;

public interface TrainerRepository extends JpaRepository<Trainer, Long> {
}