package pl.company.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.company.model.User;
import pl.company.service.SecurityService;
import pl.company.service.UserService;

import javax.validation.Valid;

@Controller

public class LoginController {
	
	private final UserService userService;
	//private final SecurityService securityService;
	
	public LoginController(UserService userService) {
		this.userService = userService;
		//this.securityService = securityService;
	}
	
	@GetMapping("/gym/register")
	public String showRegisterForm(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "registerForm";
	}
	
	@PostMapping("/gym/register")
	public String registerMember(@Valid @ModelAttribute User user, BindingResult result) throws LoginException {
		if (result.hasErrors()) {
			return "registerForm";
		}
		//jesli podany login juz jest w bazie
		if (userService.findUserByUsername(user.getUsername()) != null) {
			throw new LoginException();
		}
		if (user.getSubscribed() == null) {
			user.setSubscribed(null);
		}
		else if (user.getSubscribed().equals("yes")) {
			user.setSubscribed("yes");
		}
		userService.saveUser(user);
		
		//securityService.autoLogin(user.getUsername(), user.getPassword());
		
		return "redirect:/gym/login";
	}
	
	@GetMapping("/gym/login")
	public String showLoginForm(Model model, @RequestParam(required = false) String error) {
		User user = new User();
		if (error != null) {
			model.addAttribute("error", "Nieprawidłowy login i/lub hasło");
		}
		model.addAttribute("user", user);
		return "loginForm";
	}
}

