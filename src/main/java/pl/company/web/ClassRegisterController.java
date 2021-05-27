package pl.company.web;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
import pl.company.service.ClassRegisterService;
import pl.company.service.ScheduleService;
import pl.company.service.UserService;

import java.util.List;

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
		List<ClassRegister> register = classService.findAll();
		model.addAttribute("register", register);
		return "admin-classRegister";
	}
}
