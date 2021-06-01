package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
import pl.company.model.User;
import pl.company.service.ClassRegisterService;
import pl.company.service.ScheduleService;
import pl.company.service.UserService;

import java.util.Collection;
import java.util.List;

@Controller
public class ClassRegisterController {
	
	private final ClassRegisterService classService;
	private final UserService userService;
	private final ScheduleService scheduleService;
	
	public ClassRegisterController(ClassRegisterService classService, UserService userService, ScheduleService scheduleService) {
		this.classService = classService;
		this.userService = userService;
		this.scheduleService = scheduleService;
	}
	
	@GetMapping("/admin/schedule/register")
	public String displayWeeklySchedule(Model model){
		Collection<ClassRegister> register = classService.findAll();
		Collection<User> users = userService.findUsers();
		Collection<Schedule> classes = scheduleService.findAll();
		model.addAttribute("register", register);
		model.addAttribute("users", users);
		model.addAttribute("classes", classes);
		return "admin-class-register";
	}
	
	@GetMapping("/admin/schedule/reset")
	public String clearRegister (){
		classService.deleteAll(classService.findAll());
		return "redirect:/admin/schedule/register";
	}
}
