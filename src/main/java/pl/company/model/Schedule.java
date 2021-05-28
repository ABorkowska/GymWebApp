package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import javax.validation.constraints.*;
import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Schedule {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	private String day;
	
	@NotBlank
	@Pattern(regexp = "^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")
	private String hour;
	
	@NotBlank
	@Size(max = 20)
	private String name;
	
	@NotBlank(message="Wybierz z listy")
	@Column(name = "instructor")
	private String nameOfTrainer;
	
	@ManyToOne
	private Trainer trainer;
	
	@OneToMany(mappedBy = "schedule")
	private List<ClassRegister> classes = new ArrayList<>();
	
	@ManyToMany
	@JoinTable(name = "schedule_user",
			joinColumns = @JoinColumn(name = "schedule_id"),
			inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> users = new ArrayList<>();
}
