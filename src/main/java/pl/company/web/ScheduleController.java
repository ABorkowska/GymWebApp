package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
;
import pl.company.model.Trainer;
import pl.company.model.User;
import pl.company.service.ClassRegisterService;
import pl.company.service.ScheduleService;
import pl.company.service.TrainerService;
import pl.company.service.UserService;

import javax.validation.Valid;
import java.security.Principal;
import java.util.Collection;
import java.util.List;

@Controller
public class ScheduleController {
	
	private final ScheduleService scheduleService;
	private final UserService userService;
	private final ClassRegisterService classService;
	
	public ScheduleController(ScheduleService scheduleService, UserService userService, ClassRegisterService classService) {
		this.scheduleService = scheduleService;
		this.userService = userService;
		this.classService = classService;
	}
//	@ModelAttribute("users")
//	public Collection<User> users() {
//		return userService.findAll();
//	}
	
	@GetMapping("/gym/schedule")
	public String showSchedule(Model model) {
		List<Schedule> classes = scheduleService.findAll();
		model.addAttribute("classes", classes);
		return "schedule";
	}
	
	@GetMapping("/gym/schedule/{id}")
	public String selectClass(@PathVariable Long id, Model model, Principal principal) {
		Schedule training = scheduleService.getSchedule(id);
		if (principal==null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		System.out.println(user);
		model.addAttribute("training", training);
		model.addAttribute("email", user.getEmail());
		return "schedule-register";
	}
	
	@PostMapping("/gym/schedule/{id}")
	public String registerToClass(@PathVariable Long id, @ModelAttribute ClassRegister classRegister,
	                              @RequestParam("email") String email,
	                              @RequestParam ("phone") Integer phone, BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "schedule-register";
		}
		if (principal==null) {
			return "redirect:/gym/login";
		}
		classService.saveClassRegister(id,principal.getName(), email, phone);
		return "redirect:/home";
	}
}
