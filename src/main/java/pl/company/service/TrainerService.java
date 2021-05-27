package pl.company.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.company.model.Trainer;
import pl.company.repository.TrainerRepository;

import java.util.List;
import java.util.Optional;

@Service
public class TrainerService {
	
	private TrainerRepository trainerRepo;
	
	public TrainerService(TrainerRepository trainerRepo) {
		this.trainerRepo = trainerRepo;
	}
	
	public List<Trainer> getTrainerNames(){
		List<Trainer> list = trainerRepo.findAll();
		return list;
	}
	
	public Long findIdByName(String name) {
		return trainerRepo.findTrainerIdByName(name);
	}
	public Trainer findTrainerById(Long id) {
		return trainerRepo.findById(id).orElse(null);
	}
	
	public Trainer findTrainerByName(String name) {
		return trainerRepo.findByName(name);
	}
}
