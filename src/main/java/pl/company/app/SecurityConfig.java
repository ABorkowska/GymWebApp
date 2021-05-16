package pl.company.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import pl.company.model.User;
import pl.company.repository.UserRepository;
import pl.company.service.UserDetailsServiceImpl;


@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(securedEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	private final UserDetailsServiceImpl userDetailsService;
	private final UserRepository userRepo;
	
	@Autowired
	public SecurityConfig(UserDetailsServiceImpl userDetailsService, UserRepository userRepo) {
		this.userDetailsService = userDetailsService;
		this.userRepo = userRepo;
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/home").permitAll()
				.antMatchers("/gym/**").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.and()
				.formLogin().permitAll();     //przekierowuje na strone logowania
				//.loginPage("/login");       //adres strony logowania
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}
	
	@Bean
	public PasswordEncoder passEncoder(){
		return new BCryptPasswordEncoder();
	}
	
	@EventListener(ApplicationReadyEvent.class)     //tworzy usera przy starcie aplikacji
	public void get(){
		User user = new User(1L,"BartoszB", passEncoder().encode("Iron44"), "ROLE_ADMIN");
		User user1 = new User(2L,"kamil", passEncoder().encode("Iron33"), "ROLE_USER");
		userRepo.save(user);
		userRepo.save(user1);
		
	}
	
//	@Bean
//	public HttpFirewall looseHttpFirewall() {
//		StrictHttpFirewall firewall = new StrictHttpFirewall();
//		firewall.setAllowedHttpMethods(Arrays.asList("GET", "POST"));
//		firewall.setAllowSemicolon(true);
//		firewall.setAllowUrlEncodedSlash(true);
//		firewall.setAllowBackSlash(true);
//		firewall.setAllowUrlEncodedPercent(true);
//		firewall.setAllowUrlEncodedPeriod(true);
//		return firewall;
//	}
	
}



