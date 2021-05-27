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
		return scheduleRepo.getOne(id);
	}
	
	public List <Schedule> findAll(){
		return scheduleRepo.findAll();
	}
	public void updateSchedule(Schedule schedule){
		scheduleRepo.save(schedule);
	}
	
	public List<String> getInstructors (){
		return scheduleRepo.getTrainerNames();
	}
	
}
