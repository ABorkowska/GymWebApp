package pl.company.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MemberController {
	
//	private final BookService bookService;
//
//	public BookController(BookService bookService) {
//		this.bookService = bookService;
//	}
	
//	@GetMapping("/list")
//	public String viewUsers(Model model) {
//		List<User> list = List.of(new User(1,"Ala"), new User(2,"Borek"));
//		model.addAttribute("users", list);
//		return "view-users";
//	}
}
