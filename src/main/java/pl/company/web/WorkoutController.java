package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.company.enums.Equipment;
import pl.company.enums.MuscleGroup;
import pl.company.enums.WorkoutType;
import pl.company.model.Exercise;
import pl.company.model.User;
import pl.company.model.Workout;
import pl.company.model.view.CustomWorkout;
import pl.company.service.ExerciseService;
import pl.company.service.UserService;
import pl.company.service.WorkoutService;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Arrays;
import java.util.List;

@Controller
public class WorkoutController {
	
	private final UserService userService;
	private final ExerciseService exerciseService;
	private final WorkoutService workoutService;
	
	public WorkoutController(UserService userService, ExerciseService exerciseService, WorkoutService workoutService) {
		this.userService = userService;
		this.exerciseService = exerciseService;
		this.workoutService = workoutService;
	}
	
	@GetMapping("/gym/workout/create")
	public String createWorkout(Model model, Principal principal) {
		if (principal == null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		CustomWorkout workout = new CustomWorkout();
		workout.setMuscleGroups(Arrays.asList(MuscleGroup.values()));
		workout.setEquipment(Arrays.asList(Equipment.values()));
		model.addAttribute("user", user);
		model.addAttribute("workout", workout);
		return "workout-create";
	}
	
	@PostMapping("/gym/workout/create")
	public String saveWorkout(@Valid @ModelAttribute CustomWorkout workout, BindingResult result) {
		System.out.println("-------------");
		System.out.println(workout);
		
		workoutService.addWorkout(workout);
		
		return "redirect:/gym/dashboard";
//	@PostMapping("/gym/workout/create")
//	public String saveWorkout(@RequestParam WorkoutType type,
//	                          @RequestParam(value="muscleGroup") List<String> muscleGroup,
//	                          @RequestParam(value="equipment") List<String> equipment,
//	                          @Valid @ModelAttribute Workout workout, BindingResult result) {
//
//		workout.setType(type);
//
//		//List<Exercise> exercises = exerciseService.getExercisesforWorkout(muscleGroup, equipment);
//
//		return "redirect:/gym/dashboard";
//	}
	
	}
}
