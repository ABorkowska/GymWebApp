package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.Schedule;
import pl.company.repository.UserRepository;;
import pl.company.repository.TrainerRepository;
import pl.company.service.ScheduleService;

import java.util.List;

@Controller
public class ScheduleController {
	
	private final ScheduleService scheduleService;
	private final TrainerRepository trainerRepo;
	private final UserRepository userRepo;
	
	public ScheduleController(ScheduleService scheduleService, TrainerRepository trainerRepo, UserRepository userRepo) {
		this.scheduleService = scheduleService;
		this.trainerRepo = trainerRepo;
		this.userRepo = userRepo;
	}
	
	@GetMapping("/gym/schedule")
	public String showSchedule(Model model){
		List<Schedule> classes = scheduleService.findAll();
		model.addAttribute("classes", classes);
		return "schedule";
	}
	// todo przekierowanie do formularza zapisu ok, co przekazac jako modelAttribute zeby po wyslaniu zapisal sie w bazie  schedule-member
	@GetMapping("/gym/schedule/{id}")
	public String selectClass(@PathVariable Long id, Model model){
		Schedule training = scheduleService.getOne(id);
		model.addAttribute("training", training);
		return "schedule-register";
	}
	@PostMapping
	public String registerToClass(){
		return "home";
	}
	
}
