package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.Exercise;
import pl.company.model.User;
import pl.company.model.Workout;
import pl.company.model.view.CustomWorkout;
import pl.company.repository.WorkoutRepository;

import java.util.List;


@Service
public class WorkoutService {
	
	private final WorkoutRepository workoutRepo;
	private final UserService userService;
	private final ExerciseService exerciseService;
	
	public WorkoutService(WorkoutRepository workoutRepo, UserService userService, ExerciseService exerciseService) {
		this.workoutRepo = workoutRepo;
		this.userService = userService;
		this.exerciseService = exerciseService;
	}
	
	public Workout addWorkout(CustomWorkout customWorkout, User user){
		
		Workout workout = new Workout();
		
		List<Exercise> list = exerciseService.getExercisesforWorkout(customWorkout.getMuscleGroups(), customWorkout.getEquipment());
		workout.setName(customWorkout.getName());
		workout.setType(customWorkout.getType());
		workout.setSets(customWorkout.getType().getSets());
		workout.setReps(customWorkout.getType().getReps());
		//workout.setExercises(list);
		System.out.println("--------------------------------------" + list);
		workout.setUser(user);
		return workoutRepo.save(workout);
	}
	public List<Workout> getWorkoutByUserId(Long id){
		return workoutRepo.findByUserId(id);
	}
}
