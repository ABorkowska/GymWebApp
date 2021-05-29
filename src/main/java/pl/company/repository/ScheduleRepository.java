package pl.company.repository;

import org.jetbrains.annotations.NotNull;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.company.model.Schedule;
import pl.company.model.User;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Transactional
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
	
	@Query("select s from Schedule s join fetch s.trainer t where t.name=:name")
	List<Schedule> findAllByTrainerName(@Param("name") String name);
	
	@Query("select s from Schedule s order by s.day")
	List<Schedule> findAllOrderByDay();
	
	@Query("select distinct s.nameOfTrainer from Schedule s order by s.nameOfTrainer asc")
	List<String> getTrainerNames();
	
	@NotNull
	Optional<Schedule> findById(@NotNull Long id);


}