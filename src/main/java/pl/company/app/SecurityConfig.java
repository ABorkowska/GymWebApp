package pl.company.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import pl.company.model.Admin;
import pl.company.repository.AdminRepository;
import pl.company.service.SecurityService;
import pl.company.service.UserDetailsServiceImpl;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public UserDetailsService userDetailsService;
	@Autowired
	public AdminRepository adminRepo;
	
	
	@Bean
	public BCryptPasswordEncoder passEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth
				.userDetailsService(userDetailsService)
				.passwordEncoder(passEncoder());
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/home").permitAll()
				.antMatchers("/gym/**").permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.and().formLogin()
				.loginPage("/gym/login")        //adres naszej strony logowania (nadpisuje domyslny formularz)
				.defaultSuccessUrl("/home")
				.usernameParameter("username")
				.passwordParameter("password")
				.failureUrl("/gym/login?error=true");
	}
	
	@EventListener(ApplicationReadyEvent.class)     //tworzy usera przy starcie aplikacji
	public void get() {
		Admin user = new Admin(1L, "bartek", passEncoder().encode("Ironbartek"), "ROLE_ADMIN");
		Admin user1 = new Admin(2L, "kamil", passEncoder().encode("Ironkamil"), "ROLE_USER");
		adminRepo.save(user);
		adminRepo.save(user1);
	}
}
	




