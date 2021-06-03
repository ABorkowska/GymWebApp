package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;
import pl.company.enums.WorkoutType;
import pl.company.model.Exercise;
import pl.company.model.Workout;
import pl.company.repository.ExerciseRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ExerciseService {
	
	private final ExerciseRepository exerciseRepo;
	
	public ExerciseService(ExerciseRepository exerciseRepo) {
		this.exerciseRepo = exerciseRepo;
	}
	
	public List<Exercise> getAllExercises() {
		return exerciseRepo.findAll();
	}
	
	public List<Exercise> getExercisesforWorkout(List<MuscleGroup> muscles, List<Equipment> equipment) {  //will be added as form param with multiply select
		
		List<Exercise> all = new ArrayList<>();
		
		for(MuscleGroup m : muscles){
			for(Equipment e : equipment){
				List<Exercise> exercises = exerciseRepo.findByMuscleGroupAndEquipment(m,e);
				all.addAll(exercises);
			}
		}
		
		return all;
	}
//	public List<Exercise> customExercises(){
//		List <Exercise> all = getExercisesforWorkout()
//		return exerciseRepo.save();
	}
	
