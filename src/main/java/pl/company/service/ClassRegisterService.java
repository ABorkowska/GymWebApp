package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.ClassRegister;
import pl.company.repository.ClassRegisterRepository;

@Service
public class ClassRegisterService {
	
	private final ClassRegisterRepository classRepo;
	
	public ClassRegisterService(ClassRegisterRepository classRepo) {
		this.classRepo = classRepo;
	}
	public ClassRegister saveClassRegister(ClassRegister classRegister){
		return classRepo.save(classRegister);
	}
}
