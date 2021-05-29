package pl.company.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.mock.mockito.MockBean;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
import pl.company.model.User;
import pl.company.repository.ClassRegisterRepository;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

@RunWith(MockitoJUnitRunner.class)
class ClassRegisterServiceTest {
	
	ClassRegisterService testedService;
	@MockBean
	ClassRegisterRepository classRepo;
	@MockBean
	ScheduleService scheduleService;
	@MockBean
	UserService userService;
	
	
	@BeforeEach
	void setUp() {
		//userService = new UserService(null, null, null);
		testedService = new ClassRegisterService(classRepo, scheduleService, userService);
	}
	
	@Test
	void saveClassRegister() {
		//given
		Long id = 2L;
		String username = "borek";
		String email = "ab@.pl";
		Integer phone = 222222222;
		User testedUser = new User();
		when(userService.findUserByUsername(any())).thenReturn(testedUser);
		when(classRepo.save(any())).thenReturn(new ClassRegister());
		when(scheduleService.getSchedule(any())).thenReturn(new Schedule());
		
		//when
		ClassRegister classRegister = testedService.saveClassRegister(id, username, email, phone);
		
		//then
		assertNotNull(classRegister);
	}
}