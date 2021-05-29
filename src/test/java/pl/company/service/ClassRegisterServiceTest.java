package pl.company.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import pl.company.model.ClassRegister;
import pl.company.model.Schedule;
import pl.company.model.User;
import pl.company.repository.ClassRegisterRepository;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
class ClassRegisterServiceTest {
	
	ClassRegisterService testedService;
	@Mock
	ClassRegisterRepository classRepo;
	@Mock
	ScheduleService scheduleService;
	@Mock
	UserService userService;
	
	
	@BeforeEach
	void setUp() {
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