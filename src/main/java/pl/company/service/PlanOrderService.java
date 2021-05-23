package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.PlanOrder;
import pl.company.repository.PlanOrderRepository;

@Service
public class PlanOrderService {
	
	private PlanOrderRepository planOrderRepo;
	
	public PlanOrderService(PlanOrderRepository planOrderRepo) {
		this.planOrderRepo = planOrderRepo;
	}
	
	public PlanOrder savePlanOrder(PlanOrder planOrder) {
		return planOrderRepo.save(planOrder);
	}
	
	public PlanOrder findById(Long id){
		return planOrderRepo.getPlanOrderById(id);
	}
}
