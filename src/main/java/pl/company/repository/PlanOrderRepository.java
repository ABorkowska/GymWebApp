package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.company.model.PlanOrder;

@Repository
public interface PlanOrderRepository extends JpaRepository<PlanOrder, Long> {

}