package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;
import pl.company.model.Exercise;

import java.util.List;

@Repository
public interface ExerciseRepository extends JpaRepository<Exercise, Long> {
	
	List<Exercise> findByMuscleGroup(MuscleGroup muscleGroup);
	List<Exercise> findByEquipment(Equipment equipment);
	List<Exercise> findByMuscleGroupAndEquipment(MuscleGroup muscleGroup, Equipment equipment);
	
}