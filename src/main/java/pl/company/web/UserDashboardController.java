package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.*;
import pl.company.service.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Collection;
import java.util.List;

@Controller
public class UserDashboardController {
	
	private final UserService userService;
	private final ClassRegisterService classService;
	private final ScheduleService scheduleService;
	private final PlanOrderService planOrderService;
	private final TrainerService trainerService;
	private final PlanService planService;
	private final WorkoutService workoutService;
	
	public UserDashboardController(UserService userService, ClassRegisterService classService, ScheduleService scheduleService, PlanOrderService planOrderService, TrainerService trainerService, PlanService planService, WorkoutService workoutService) {
		this.userService = userService;
		this.classService = classService;
		this.scheduleService = scheduleService;
		this.planOrderService = planOrderService;
		this.trainerService = trainerService;
		this.planService = planService;
		this.workoutService = workoutService;
	}
	
	@GetMapping("/gym/dashboard")
	public String showUserDashboard(Model model, Principal principal) {
		if (principal==null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		Collection<ClassRegister> classes = classService.findAll();
		Collection<PlanOrder> planOrders = planOrderService.findAll();
		Collection<Schedule> schedule = scheduleService.findAll();
		Collection<Trainer> trainers = trainerService.getTrainerNames();
		Collection<Plan> plans = planService.findAll();
		List<Workout> workouts = workoutService.getWorkoutByUserId(user.getId());
		model.addAttribute("user", user);
		model.addAttribute("classes", classes);
		model.addAttribute("planOrders", planOrders);
		model.addAttribute("schedule", schedule);
		model.addAttribute("trainers", trainers);
		model.addAttribute("plans", plans);
		model.addAttribute("workouts", workouts);
		return "user-dashboard";
	}
	@PostMapping("/gym/dashboard/profile")
	public String updateProfile (@ModelAttribute User user,Principal principal){
		User loggedUser = userService.findUserByUsername(principal.getName());
		userService.saveUser(loggedUser, user.getEmail(), user.getFirstName(), user.getLastName(), user.getPassword());
		return "redirect:/gym/dashboard";
	}
}
