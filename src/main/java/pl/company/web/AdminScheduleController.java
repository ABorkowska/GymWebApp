package pl.company.web;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.Schedule;
import pl.company.model.Trainer;
import pl.company.model.User;
import pl.company.service.ScheduleService;
import pl.company.service.TrainerService;

import javax.validation.Valid;
import java.util.Collection;
import java.util.List;

@Controller
@Secured("ROLE_ADMIN")
public class AdminScheduleController {
	
	private final ScheduleService scheduleService;
	private final TrainerService trainerService;
	
	@ModelAttribute("trainers")
	public Collection<Trainer> trainers() {
		return trainerService.getTrainerNames();
	}
	
	public AdminScheduleController(ScheduleService scheduleService, TrainerService trainerService) {
		this.scheduleService = scheduleService;
		this.trainerService = trainerService;
	}
	
	@GetMapping("/admin/schedule")
	public String displaySchedule(Model model) {
		List<Schedule> schedule = scheduleService.findAll();
		model.addAttribute("schedule", schedule);
		return "admin-schedule";
	}
	
	@GetMapping("/admin/schedule/edit/{id}")
	public String displayClass(@PathVariable Long id, Model model) {
		Schedule schedule = scheduleService.getSchedule(id);
		List<String> trainerNames = scheduleService.getInstructors();
		model.addAttribute("schedule", schedule);
		model.addAttribute("trainerNames", trainerNames);
		return "admin-class-edit";
	}
	
	@PostMapping("/admin/schedule/edit/{id}")
	public String saveClass(@PathVariable Long id, @Valid @ModelAttribute Schedule schedule, BindingResult result) {
		Trainer trainer = trainerService.findTrainerByName(schedule.getNameOfTrainer());
		if (result.hasErrors()) {
			return "redirect:/admin/schedule/edit/" + id;
		}
		schedule.setTrainer(trainer);
		scheduleService.updateSchedule(schedule);
		return "redirect:/admin/schedule";
	}
	@GetMapping("/admin/schedule/delete/{id}")
	public String deleteClass(@PathVariable Long id,Model model) {
		Schedule schedule = scheduleService.getSchedule(id);
		model.addAttribute("schedule", schedule);
		return "redirect:/admin/schedule";
	}
	
	
}

