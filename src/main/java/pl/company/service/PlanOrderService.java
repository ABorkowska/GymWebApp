package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.Plan;
import pl.company.model.PlanOrder;
import pl.company.repository.PlanOrderRepository;

import java.util.Collection;

@Service
public class PlanOrderService {
	
	private final PlanOrderRepository planOrderRepo;
	
	public PlanOrderService(PlanOrderRepository planOrderRepo) {
		this.planOrderRepo = planOrderRepo;
	}
	
	public PlanOrder savePlanOrder(PlanOrder planOrder) {
		return planOrderRepo.save(planOrder);
	}
	
	public PlanOrder findById(Long id){
		return planOrderRepo.getPlanOrderById(id);
	}
	public Long findPlanForPlanOrder(Long id){
		return planOrderRepo.findPlanForPlanOrder(id);
	}
	
	public Collection<PlanOrder> findAll() {
		return planOrderRepo.findAll();
	}
}
