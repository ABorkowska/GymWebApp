package pl.company.model;

import lombok.*;
import org.hibernate.validator.constraints.Length;
import org.jetbrains.annotations.Nullable;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@Table(name = "users")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	@Size(min = 3, max = 20)
	private String firstName;
	
	@NotBlank
	@Size(min = 3, max = 20)
	private String lastName;
	
	@NotBlank
	@Email(message = "Niepoprawny format adresu e-mail")
	private String email;
	
	@NotBlank
	@Size(min = 3, max = 20)
	@Column(unique = true)
	private String username;
	
	@NotBlank
//	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$",
	@Size(min=8, message = "Hasło musi zawierać co najmniej 8 znaków")
	private String password;
	
	@Nullable
	private String subscribed;
	
	@NotNull
	private int enabled;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)     //cascade = CascadeType.MERG
	@JoinTable(name = "user_role",
			joinColumns = @JoinColumn(name = "user_id"),
			inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;
	
	
	//many to many do schedule -> member podrzedny w relacji
	@ManyToMany(mappedBy = "users")
	private List<Schedule> classes = new ArrayList<>();
	
	
	@Nullable
	@ManyToOne
	private Plan plan;
	
	@ManyToMany
	@JoinTable(name = "users_workouts",
			joinColumns = @JoinColumn(name = "user_id"),
			inverseJoinColumns = @JoinColumn(name = "workout_id"))
	private List<Workout> workouts = new ArrayList<>();
	
	
	@Override
	public String toString() {
		return "User{" +
				"id=" + id +
				", firstName='" + firstName + '\'' +
				", lastName='" + lastName + '\'' +
				", email='" + email + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", subscribed='" + subscribed + '\'' +
				", enabled=" + enabled +
				", roles=" + roles +
				", classes=" + classes +
				", plan=" + plan +
				", workouts=" + workouts +
				'}';
	}
}
