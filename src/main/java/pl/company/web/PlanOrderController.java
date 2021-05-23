package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.company.model.Plan;
import pl.company.model.PlanOrder;
import pl.company.model.Trainer;
import pl.company.model.User;
import pl.company.service.*;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

@Controller
public class PlanOrderController {
	
	private final PlanService planService;
	private final PlanOrderService planOrderService;
	private final UserService userService;
	private final TrainerService trainerService;
//	private final SecurityServiceImpl currentUser;
	
	@ModelAttribute("trainers")
	public Collection<Trainer> trainers() {
		return trainerService.getTrainerNames();
	}
	
	public PlanOrderController(PlanService planService, PlanOrderService planOrderService, UserService userService, TrainerService trainerService) {
		this.planService = planService;
		this.planOrderService = planOrderService;
		this.userService = userService;
		this.trainerService = trainerService;
//		this.currentUser = currentUser;
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
	
	@PostMapping("/gym/plans/{id}")
	public String buyPlan(@PathVariable Long id, @ModelAttribute PlanOrder planOrder,
	                      @RequestParam(required = false, name = "trainers") Long trainerId,
	                      @RequestParam(required = false, name = "exists") Boolean exists, Principal principal) {
		Plan plan = planService.getOne(id);
		System.out.println(trainerId);
		System.out.println(planOrder);
		Trainer trainer = trainerService.findTrainerById(trainerId);
		//User user = userService.findUserByUsername(request.getParameter("login"));
		if (principal==null) {
			return "redirect:/gym/login";
		}
		User user = userService.findUserByUsername(principal.getName());
		planOrder.setNutrition(exists);
		planOrder.setPlan(plan);
		planOrder.setTrainer(trainer);
		planOrder.setId(null);
		planOrder.setUser(user);
		PlanOrder orderedPlan = planOrderService.savePlanOrder(planOrder);
		return "redirect:/gym/plans/order/" + orderedPlan.getId();
		
	}
	
	@GetMapping("/gym/plans/order/{id}")
	public String processPayment(@PathVariable Long id, Model model) {
		//Plan plan = planService.getOne();
		PlanOrder planOrder = planOrderService.findById(id);
		model.addAttribute("planOrder", planOrder);
		return "plan-pay";
	}
	
}
