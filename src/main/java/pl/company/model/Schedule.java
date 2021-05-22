package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
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
	@Pattern(regexp="^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")
	private String hour;
	
	@NotBlank
	@Size(max=20)
	private String name;
	
	@Column(name="instructor")
	private String nameOfTrainer;
	
	@NotNull
	@ManyToOne
	private Trainer trainer;
	
	//many to many do member, schedule jako nadrzedny
	@ManyToMany
	@JoinTable(name="classes_members",
			joinColumns = @JoinColumn(name="schedule_id"),
			inverseJoinColumns = @JoinColumn(name="member_id"))
	
	private List<User> users = new ArrayList<>();
	}
