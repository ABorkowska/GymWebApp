package pl.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.company.model.Schedule;

import javax.transaction.Transactional;

@Transactional
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {



}