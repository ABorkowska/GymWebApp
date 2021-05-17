package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.company.model.Member;
import pl.company.repository.MemberRepository;
import pl.company.service.MemberService;

import javax.validation.Valid;

@Controller
public class RegisterController {
	
	private final MemberService memberService;
	
	public RegisterController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@GetMapping("/gym/register")
	public String showRegisterForm(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "registerForm";
	}
	
	@PostMapping("gym/register")
	public String registerMember(@Valid @ModelAttribute Member member, BindingResult result) throws LoginException {
		if (result.hasErrors()) {
			return "registerForm";
		}
		//jesli podany login juz jest w bazie
		if (memberService.findByLogin(member.getLogin()) != null) {
			throw new LoginException();
			
		}
		if (member.getSubscribed() == null) {
			member.setSubscribed(null);
		}
		else if (member.getSubscribed().equals("yes")) {
			member.setSubscribed("yes");
		}
		memberService.addMember(member);
		return "redirect:/gym/login";
	}
	
	@GetMapping("/gym/login")
	public String showLoginForm(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		return "loginForm";
	}
	
	//todo: nie dziala walidacja logowania
	
	@PostMapping("/gym/login")
	public String loginMember(@Valid @ModelAttribute Member member, BindingResult result) {
		if (result.hasErrors()) {
			return "loginForm";
		}
		Member user = memberService.findByLogin(member.getLogin());
		if (user != null &&
				user.getPassword().equals(member.getPassword())) {
			return "redirect:/home";
		}
		else {
			return "loginForm";
		}
	}
}


