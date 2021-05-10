package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Plan;

public interface PlanRepository extends JpaRepository<Plan, Long> {
}