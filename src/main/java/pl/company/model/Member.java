package pl.company.model;

import lombok.*;
import org.springframework.lang.Nullable;
import org.springframework.web.context.annotation.SessionScope;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.ArrayList;
import java.util.List;

@Table(name="members")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class Member {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer id;
	
	@NotBlank
	@Size(min=3, max=20)
	private String firstName;
	
	@NotBlank
	@Size(min=3, max=20)
	private String lastName;
	
	@NotBlank
	@Email (message="Niepoprawny format adresu e-mail")
	private String email;
	
	@NotBlank
	@Size(min=3, max=20)
	@Column(unique=true)
	private String login;
	
	@NotBlank
	@Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$",
			message="Hasło musi zawierać co najmniej 8 znaków, w tym co najmniej jedną dużą literę i co najmniej jedna cyfrę")
	private String password;
	
	@Nullable
	private String subscribed;
	
	//private String role;
	
	//many to many do schedule -> member podrzedny w relacji
	@ManyToMany(mappedBy="members")
	private List<Schedule> classes = new ArrayList<>();
	
	@Nullable
	@ManyToOne
	private Plan plan;
	
	@ManyToMany
	@JoinTable(name="members_workouts",
			joinColumns = @JoinColumn(name="member_id"),
			inverseJoinColumns = @JoinColumn(name="workout_id"))
	private List<Workout> workouts = new ArrayList<>();
}
