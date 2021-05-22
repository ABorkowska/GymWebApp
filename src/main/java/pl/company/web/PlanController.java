package pl.company.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.company.model.Plan;
import pl.company.model.Trainer;
import pl.company.model.User;
import pl.company.repository.UserRepository;
import pl.company.service.PlanService;
import pl.company.service.SecurityServiceImpl;
import pl.company.service.TrainerService;
import pl.company.service.UserDetailsServiceImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.List;

@Controller
public class PlanController {
	
	private final PlanService planService;
	private final UserRepository userRepo;
	private final TrainerService trainerService;
	
	
	@ModelAttribute("trainers")
	public Collection<Trainer> trainers() {
		return trainerService.getTrainerNames();
	}
	
	public PlanController(PlanService planService, UserRepository userRepo, TrainerService trainerService) {
		this.planService = planService;
		this.userRepo = userRepo;
		this.trainerService = trainerService;
	}
	
	@GetMapping("/gym/plans")
	public String showPlanList(Model model) {
		List<Plan> plans = planService.findAll();
		model.addAttribute("plans", plans);
		return "plan-list";
	}
	
	@GetMapping("/gym/plans/{id}")
	public String choosePlan(@PathVariable Long id, Model model) {
		Plan plan = planService.getOne(id);
		model.addAttribute("plan", plan);
//		model.addAttribute("trainers", trainerService.getTrainerNames());
		return "plan-buy";
	}
	
//	@PostMapping("/gym/plans/{id}")
//	public String buyPlan(@PathVariable Long id, @ModelAttribute Plan plan,
//	                      @RequestParam String trainer, @RequestParam Boolean exists, HttpServletRequest request) {
//		plan = planService.getOne(id);
//		trainer = request.getParameter("trainer");
//
//		return"redirect:/gym/plans/{id}/pay";
//	}
	
//	@GetMapping("redirect:/gym/plans/{id}/pay")
//	public String processPayment(@PathVariable Long id, Model model){
//
//		return "plan-pay";
//	}
	
}
