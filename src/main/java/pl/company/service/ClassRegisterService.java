package pl.company.service;

import org.springframework.stereotype.Service;
import pl.company.model.ClassRegister;
import pl.company.model.Plan;
import pl.company.repository.ClassRegisterRepository;

import java.util.List;

@Service
public class ClassRegisterService {
	
	private final ClassRegisterRepository classRepo;
	
	public ClassRegisterService(ClassRegisterRepository classRepo) {
		this.classRepo = classRepo;
	}
	
	public List<ClassRegister> findAll() {
		List<ClassRegister> list = classRepo.findAll();
		return list;
	}

	public ClassRegister saveClassRegister(ClassRegister classRegister){
		return classRepo.save(classRegister);
	}
}
