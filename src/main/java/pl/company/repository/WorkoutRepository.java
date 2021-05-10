package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Workout;

public interface WorkoutRepository extends JpaRepository<Workout, Long> {
}