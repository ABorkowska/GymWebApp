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
		List<Workout> workouts = workoutService.getWorkoutByUserId(user.getId());
		CustomWorkout workout = new CustomWorkout();
		workout.setMuscleGroups(Arrays.asList(MuscleGroup.values()));
		workout.setEquipment(Arrays.asList(Equipment.values()));
		model.addAttribute("user", user);
		model.addAttribute("workout", workout);
		model.addAttribute("workouts", workouts);
		return "workout-create";
	}
	
	@PostMapping("/gym/workout/create")
	public String saveWorkout(@ModelAttribute CustomWorkout workout, Principal principal,
	                          @RequestParam List<MuscleGroup> muscleGroups,
	                          @RequestParam List<Equipment> equipment) {
		
		if (principal == null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		List<Exercise> list = exerciseService.getExercisesforWorkout(muscleGroups, equipment);
		workout.setMuscleGroups(muscleGroups);
		workout.setEquipment(equipment);
		workoutService.addWorkout(workout, user);
		
		return "redirect:/gym/dashboard";
	}
	
	@GetMapping("/gym/workout/{id}")
	public String displayWorkout(@PathVariable Long id, Model model, Principal principal) {
		if (principal == null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		Workout workout = workoutService.findWorkoutById(id);
		model.addAttribute("workout", workout);
		model.addAttribute("user", user);
		return "workout-details";
	}
	
	@PostMapping("/gym/workout/delete/{id}")
	public String deleteWorkout(@PathVariable Long id) {
		Workout workout = workoutService.findWorkoutById(id);
		if (workout != null) {
			workoutService.removeWorkout(id);
		}
		return "redirect:/gym/dashboard";
	}
}

