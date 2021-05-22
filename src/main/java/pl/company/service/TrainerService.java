package pl.company.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.company.model.Trainer;
import pl.company.repository.TrainerRepository;

import java.util.List;

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
}
