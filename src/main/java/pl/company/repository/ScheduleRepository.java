package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Schedule;

public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
	
	@Override
	Schedule getOne(Long aLong);
}