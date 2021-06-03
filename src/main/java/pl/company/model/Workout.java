package pl.company.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.jetbrains.annotations.Nullable;
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
	
	@Enumerated(EnumType.STRING)
	private WorkoutType type;
	
	private Integer sets;
	
	private Integer reps;
	
	private String name;
	
	@Nullable
	@ManyToMany(mappedBy = "workouts", cascade=CascadeType.ALL)
	private List<Exercise> exercises = new ArrayList<>();
	
	@Nullable
	@ManyToMany(mappedBy = "workouts")
	private List<User> users = new ArrayList<>();
	
}
