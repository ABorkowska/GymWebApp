package pl.company.web;

import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.server.ResponseStatusException;
import pl.company.model.Member;
import pl.company.repository.MemberRepository;

import javax.validation.Valid;
import java.util.List;

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
		//jesli podany login juz jest w bazie
		if (memberRepo.getMemberByLogin(member.getLogin()) != null) {
			throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Użytkownik o podanym loginie już istnieje");
		}
		
		if (member.getSubscribed() == null) {
			member.setSubscribed(null);
		}
		else if (member.getSubscribed().equals("yes")) {
			member.setSubscribed("yes");
		}
		memberRepo.save(member);
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
		if (!member.getLogin().equals(memberRepo.getMemberByLogin(member.getLogin())) &&
				!member.getPassword().equals(memberRepo.getMemberByPassword(member.getPassword()))) {
			return "loginForm";
		}
		return "redirect:/home";
	}
	
}


