package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.company.model.Plan;
import pl.company.model.PlanOrder;
import pl.company.model.Trainer;
import pl.company.service.PlanOrderService;
import pl.company.service.PlanService;
import pl.company.service.TrainerService;
import pl.company.service.UserService;

import java.util.Collection;

@Controller
public class PlanOrderController {
	
	private final PlanService planService;
	private final PlanOrderService planOrderService;
	private final UserService userService;
	private final TrainerService trainerService;
	
	public PlanOrderController(PlanService planService, PlanOrderService planOrderService, UserService userService, TrainerService trainerService) {
		this.planService = planService;
		this.planOrderService = planOrderService;
		this.userService = userService;
		this.trainerService = trainerService;
	}
	@ModelAttribute("plans")
	public Collection<Plan> trainers() {
		return planService.findAll();
	}
	
//	@PostMapping("/gym/plans/{id}/buy")
//	public String buyPlan(@PathVariable Long id, @ModelAttribute PlanOrder planOrder,
//	                      @RequestParam String trainerName, @RequestParam Boolean exists, BindingResult result) {
//
//		if (result.hasErrors()){
//			return "plan-buy";
//		}
//		Plan plan = planService.getOne(id);
//		Trainer trainer = trainerService.findFirstByName(trainerName);
//		//User user = userService.findUserByUsername(request.getParameter("login"));
////		User user = userService.findUserByUsername(currentUser.findLoggedInUser());
//		planOrder.setNutrition(exists);
//		planOrder.setTrainer(trainer);
//		planOrder.setPlan(plan);
//		//planOrder.setUser(user);
//		planOrderService.savePlanOrder(planOrder);
//		//return"redirect:/gym/plans/{id}/pay";
//		return"home";
//	}
}
