package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.company.enums.Equipment;
import pl.company.enums.WorkoutType;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

@Table(name = "workouts")
@Entity
@Getter
@Setter
@NoArgsConstructor
public class Workout {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotBlank
	@Enumerated(EnumType.STRING)
	private WorkoutType type;
	
	private Integer reps;
	
	private Integer sets;

//	@Enumerated(EnumType.STRING)
//	private Equipment equipment;
//
//	@Enumerated(EnumType.STRING)
//	private MuscleGroup muscleGroup;
	
	@OneToMany(mappedBy = "workout")
	private List<Exercise> exercises = new ArrayList<>();
	
	@ManyToMany(mappedBy = "workouts")
	private List<User> users = new ArrayList<>();
	
}
