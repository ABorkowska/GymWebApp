package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.Member;
import pl.company.repository.MemberRepository;

import javax.validation.Valid;

@Controller
public class RegisterController {
	
	private final MemberRepository memberRepo;
	
	public RegisterController(MemberRepository memberRepo) {
		this.memberRepo = memberRepo;
	}
	
	@GetMapping("/gym/register")
	public String showRegisterForm(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "registerForm";
	}

//	@GetMapping("/gym/register")
//	public String showRegisterForm(Member member){
//		return "registerForm";
//	}
	
	@PostMapping("gym/register")
	public String registerMember(@Valid @ModelAttribute Member member, BindingResult result) {
		if (result.hasErrors()) {
			return "registerForm";
		}
		memberRepo.save(member);
		return "redirect:/home";
	}
	
	@GetMapping("/login")
	public String showLoginForm(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "registerForm";
	}
//	@GetMapping("/list")
//	public String viewUsers(Model model) {
//		List<User> list = List.of(new User(1,"Ala"), new User(2,"Borek"));
//		model.addAttribute("users", list);
//		return "view-users";
//	}
	
	
}


