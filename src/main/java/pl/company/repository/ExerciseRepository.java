package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;
import pl.company.enums.WorkoutType;
import pl.company.model.Exercise;
import pl.company.model.Workout;

import java.util.List;

@Repository
public interface ExerciseRepository extends JpaRepository<Exercise, Long> {
	
	List<Exercise> findByEquipmentAndMuscleGroup(
			Equipment equipment, MuscleGroup muscleGroup);
}