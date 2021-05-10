package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Exercise;

public interface ExerciseRepository extends JpaRepository<Exercise, Long> {
}