package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@GetMapping("/home")
	public String showHomePage() {
		return "home";
	}
	@GetMapping("/plan")
	public String showplans() {
		return "plan-list";
	}
	@GetMapping("/buy")
	public String buyPlan(){
		return "plan-buy";
	}
	@GetMapping("/pay")
	public String payPlan(){
		return "plan-pay";
	}
	@GetMapping("/class")
	public String showTest() {
		return "schedule-register";
	}
	@GetMapping("/admin")
	@ResponseBody
	public String restricted() {
		return "Welcome Admin";
	}
	@GetMapping("/edit")
	public String displaySchedule() {
		return "admin-schedule-edit";
	}
	@GetMapping("/schedule")
	public String showAdminDashboard() {
		return "admin-class-edit";
	}
}
