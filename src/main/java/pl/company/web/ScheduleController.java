package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
;
import pl.company.model.User;
import pl.company.service.ClassRegisterService;
import pl.company.service.ScheduleService;
import pl.company.service.TrainerService;
import pl.company.service.UserService;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
public class ScheduleController {
	
	private final ScheduleService scheduleService;
	private final TrainerService trainerService;
	private final UserService userService;
	private final ClassRegisterService classService;
	
	public ScheduleController(ScheduleService scheduleService, TrainerService trainerService, UserService userService, ClassRegisterService classService) {
		this.scheduleService = scheduleService;
		this.trainerService = trainerService;
		this.userService = userService;
		this.classService = classService;
	}
	
	@GetMapping("/gym/schedule")
	public String showSchedule(Model model) {
		List<Schedule> classes = scheduleService.findAll();
		model.addAttribute("classes", classes);
		return "schedule";
	}
	
	@GetMapping("/gym/schedule/{id}")
	public String selectClass(@PathVariable Long id, Model model) {
		Schedule training = scheduleService.getOne(id);
		model.addAttribute("training", training);
		return "schedule-register";
	}
	
	@PostMapping("/gym/schedule/{id}")
	public String registerToClass(@PathVariable Long id, @Valid @ModelAttribute ClassRegister classRegister, BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "schedule-register";
		}
		if (principal==null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		classRegister.setSchedule(scheduleService.getOne(id));
		classRegister.setUser(user);
		classService.saveClassRegister(classRegister);
		return "home";
	}
}
