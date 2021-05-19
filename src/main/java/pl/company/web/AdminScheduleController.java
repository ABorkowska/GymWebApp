package pl.company.web;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Secured("ROLE_ADMIN")
public class AdminScheduleController {
	
	@GetMapping("/admin/schedule")
	@ResponseBody
	public String getSchedule(){
		return "schedule";
	}
}
