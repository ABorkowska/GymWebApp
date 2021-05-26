package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.Schedule;
import pl.company.repository.ScheduleRepository;

import java.util.List;

@Service
public class ScheduleService {
	
	private final ScheduleRepository scheduleRepo;
	
	public ScheduleService(ScheduleRepository scheduleRepo) {
		this.scheduleRepo = scheduleRepo;
	}
	
	public Schedule getSchedule(Long id) {
		Schedule schedule = scheduleRepo.getOne(id);
		return schedule;
	}
	
	public List <Schedule> findAll (){
		List<Schedule> list = scheduleRepo.findAll();
		return list;
	}
	public Schedule updateSchedule(Schedule schedule){
		return scheduleRepo.save(schedule);
	}
}
