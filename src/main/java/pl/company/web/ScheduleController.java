package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.company.model.Schedule;
import pl.company.repository.MemberRepository;
import pl.company.repository.ScheduleRepository;
import pl.company.repository.TrainerRepository;

import java.util.List;

@Controller
public class ScheduleController {
	
	private final ScheduleRepository scheduleRepo;
	private final TrainerRepository trainerRepo;
	private final MemberRepository memberRepo;
	
	public ScheduleController(ScheduleRepository scheduleRepo, TrainerRepository trainerRepo, MemberRepository memberRepo) {
		this.scheduleRepo = scheduleRepo;
		this.trainerRepo = trainerRepo;
		this.memberRepo = memberRepo;
	}
	
	@GetMapping("/gym/schedule")
	public String showSchedule(Model model){
		List<Schedule> classes = scheduleRepo.findAll();
		model.addAttribute("classes", classes);
		return "schedule";
	}
	
	@GetMapping("/gym/schedule/{id}")
	public String selectClass(@PathVariable Long id, Model model){
		Schedule training = scheduleRepo.getOne(id);
		model.addAttribute("training", training);
		return "schedule/register";
	}
}
