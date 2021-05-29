package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
import pl.company.model.User;
import pl.company.repository.ClassRegisterRepository;

import java.util.List;

@Service
public class ClassRegisterService {
	
	private final ClassRegisterRepository classRepo;
	private final ScheduleService scheduleService;
	private final UserService userService;
	
	public ClassRegisterService(ClassRegisterRepository classRepo, ScheduleService scheduleService, UserService userService) {
		this.classRepo = classRepo;
		this.scheduleService = scheduleService;
		this.userService = userService;
	}
	
	public List<ClassRegister> findAll() {
		List<ClassRegister> list = classRepo.findAll();
		return list;
	}

	public ClassRegister saveClassRegister(Long id, String username, String email, Integer phone){
		Schedule schedule = scheduleService.getSchedule(id);
		User user = userService.findUserByUsername(username);
		ClassRegister classRegister = new ClassRegister();
		classRegister.setSchedule(schedule);
		classRegister.setUser(user);
		if (email==null || email.equals("")){
			email = user.getEmail();
		}
		classRegister.setEmail(email);
		classRegister.setContactNumber(phone);
		return classRepo.save(classRegister);
	}
}
