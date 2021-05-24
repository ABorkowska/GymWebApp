package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.Plan;
import pl.company.repository.PlanRepository;

import java.util.List;

@Service
public class PlanService {
	
	private final PlanRepository planRepo;
	
	public PlanService(PlanRepository planRepo) {
		this.planRepo = planRepo;
	}
	public List<Plan> findAll(){
		List<Plan> list = planRepo.findAll();
		return list;
	}
	public Plan getOne(Long id) {
		Plan plan = planRepo.getOne(id);
		return plan;
	}
}
